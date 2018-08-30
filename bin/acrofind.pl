#!/usr/bin/perl -l

use strict;
use warnings;

use LWP::Simple;
use XML::XPath;

die "Usage: $0 abbr [abbr]..." unless @ARGV;

my $url     = 'http://acronyms.silmaril.ie/cgi-bin/xaa?';
my $xpath   = '/acronym/found/acro/expan/text()';
my $counter = 0;
foreach (@ARGV) {
    my $re = get("$url$_");
    next unless defined $re;
    print;
    print $_->string_value foreach XML::XPath->new( xml => $re )->findnodes($xpath);
    $counter++;
}
