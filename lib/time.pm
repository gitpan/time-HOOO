package time;
use strict;
use warnings;

our $VERSION = '1.0012';

use Time::HiRes @Time::HiRes::EXPORT_OK;
use Exporter 'import';

our @EXPORT = 'time';

1;
__END__

=head1 NAME

time - uses L<Time::HiRes>

=head1 SYNOPSIS

	use time;
	
	printf "%s\n", time;
	printf "%s\n", time::gettimeofday;
	time::usleep(0.17);

=cut
