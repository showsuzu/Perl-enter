#!/usr/bin/env perl
use strict;
use warnings;

my $words_ref = [
    'papix loves meat!',
    'boolfool loves sushi!',
    'suzuki loves ramen',
];

sub love_food {
	my $words = shift @_;
	#my $length = @$words;
	#print "array num : $length\n";
	for my $word (@$words) {
		#print "$word\n";
		if ($word =~ /(.+?) loves ([^!]+)!?/) {
			print "$1 -> $2\n";
		}
	}
}

love_food($words_ref);
