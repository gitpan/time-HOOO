#!/usr/bin/perl -w
#package 01_time
use Test::More tests => 1070;
use strict;

BEGIN {
	$| = 1;
	chdir 't' if -d 't';
	unshift @INC, '../lib';
	use_ok 'time';
}

sub Math::sum {
	my $sum = 0;
	$sum += $_ foreach @_;
	return $sum;
}

ok time;
ok time::usleep(0.17);
ok my $n = Math::sum( map { ok( time =~ m/\./ ) } 1 .. 1065 );
can_ok 'time', 'gettimeofday';

__END__
