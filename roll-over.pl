#!/usr/bin/perl -w
# $Id: roll-over.pl,v 1.1 2010/10/03 12:21:36 micro Exp $
# $Source: RCS/roll-over.pl,v $
# synopsis:  script to determine which futures contracts have rolled over
#     data collected from http://www.mrci.com/ohlc/ohlc-all.php OR
#     http://www.commoditycharts.com/quote.asp?sym=GC&mode=d (for each
#     instrument)

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
use ':5.10.0';

my $prog = $PROGRAM_NAME;


__END__
my $func = (caller(0))[3];

=pod

=head1 NAME

roll-over.pl

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

R Primus, Sun Oct  3 13:21:00 2010

=head1 BUGS

There are none - what do you expect?  It was written by Primus!

=head1 SEE ALSO

=head1 COPYRIGHT

Copyright ###year###, R Primus. All Rights Reserved

=cut

