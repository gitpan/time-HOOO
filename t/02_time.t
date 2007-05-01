#!/usr/bin/perl -w
#package 02_time
use Test::More tests => 1;
use strict;

BEGIN {
	$| = 1;
	chdir 't' if -d 't';
	unshift @INC, '../lib';
	use_ok 'time';
}

	
	printf "%s\n", time;
	printf "%s\n", time::gettimeofday;
	time::usleep(0.17);


__END__
