#!/bin/bash

# This script produces a snapshot for a given VM named YYYY-MM-DD. It also
# removes a weekly-old snapshot

while getopts ":ln" opt ; do
	case ${opt} in
		l) listOnly=1 ;;
		n) echo=echo ;;
	esac
done
shift $(($OPTIND - 1));

vmName="${1:?No VM name given, aborting}"
curDate=$(env LC_CTIME=C date +%F)
weekAgo=$(env LC_CTIME=C date --date "1 week ago" +%F)

[ -n "${listOnly}" ] && {
	virsh snapshot-list "${vmName}"
	exit
}

${echo} virsh snapshot-create-as "${vmName}" "${curDate}"
${echo} virsh snapshot-delete "${vmName}" "${weekAgo}"
