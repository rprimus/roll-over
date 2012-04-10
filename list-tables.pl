#!/usr/bin/perl -w

# use diagnostics -verbose;
use strict;
use HTML::TableExtract;
use autodie;

my $file='ohlc-all.php';

my $te = HTML::TableExtract->new();
$te->parse_file($file);

foreach my $ts ($te->tables) {
    print "Table found at ", join(';', $ts->coords), ":\n";
    foreach my $row ($ts->rows) {
      print "   ", join(';', @$row), "\n";
    }
}
