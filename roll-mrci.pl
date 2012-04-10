#!/usr/bin/perl -w
# $Id: roll-mrci.pl,v 1.1 2010/10/04 04:30:06 micro Exp $
# $Source: RCS/roll-mrci.pl,v $
# synopsis:

# Copyright (c) 2010, R Primus. All Rights Reserved

# THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND, EXPRESS,
# IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

# IN NO EVENT SHALL R Primus BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OF ANY KIND, OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER OR NOT ADVISED OF THE POSSIBILITY OF
# DAMAGE, AND ON ANY THEORY OF LIABILITY,  ARISING OUT OF OR IN CONNECTION WITH
# THE USE OR PERFORMANCE OF THIS SOFTWARE.

use diagnostics -verbose; 
use strict;
use HTML::TableExtract;
use LWP::UserAgent;
use POSIX qw(strftime);
use ':5.10.0';

my $prog = $0;

my $url='http://www.mrci.com/ohlc/ohlc-all.php';
my $accept='text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5';
my $out_file = 'margin.stm-########';

# get today's date (for file extension
my $date = strftime "%d%m%Y", localtime;
$out_file =~ s/########/$date/;

my $ua = LWP::UserAgent->new;
my $res=$ua->get($url, "Accept:" => $accept);

# Check the outcome of the response
if ($res->is_error) {
   die($res->status_line);
}


my $te = HTML::TableExtract->new( headers => ["Exchange", "IB Underlying", "Product description", "Trading Class", "Intraday Initial", "Intraday Maintenance", "Overnight Initial", "Overnight Maintenance", "Currency"]);

$te->parse($res->content);

# Open file to write results
open (my $fh, '>', $out_file) || die "$prog_name: write_out_file: cannot open $out_file: $!\n";


# Examine all matching tables
foreach my $ts ($te->tables) {
    #print "Table (", join(',', $ts->coords), "):\n";
    foreach my $row ($ts->rows) {
        print {$fh} join('; ', @$row), "; \r\n";
    }
}

close($fh);
exit(0);


__END__
my $func = (caller(0))[3];

=pod

=head1 NAME

roll-mrci.pl

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

R Primus, Mon Oct  4 05:29:14 2010

=head1 BUGS

There are none - what do you expect?  It was written by Primus!

=head1 SEE ALSO

=head1 COPYRIGHT

Copyright ###year###, R Primus. All Rights Reserved

=cut

