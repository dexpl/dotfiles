#!/bin/bash

backupLogin=admin
backupBase=/srv/bckp
backupCmd="export compact"

while getopts ":d:u:" option ; do
	case ${option} in
	d) backupBase="${OPTARG}" ;;
	u) backupLogin=${OPTARG} ;;
	\:) _errExit "Option -${OPTARG} requires an argument, aborting" ;;
	*) _errExit "Unknown option -${OPTARG}" ;;
	esac
done
shift $(($OPTIND - 1))

set -e
for host in $@ ; do
	backupDir="${backupBase}/${host}"
	backupFile="${backupDir}/$(date +%F.%s).rsc"
	[ -d "${backupDir}" ] || mkdir "${backupDir}"
	ssh ${backupLogin}@${host} ${backupCmd} > "${backupFile}"
done
