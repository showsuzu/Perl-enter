#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;


my @array = ('one', 'two');
my %hash = ( three => 'three', fore => 'fore', five => '5');

sub output_array_and_hash {
	my ( $array, $hash ) = @_;
	print "--array---\n";
	print "[" . join(', ', @$array) . "]\n";
	for my $item (@$array) {
		print "$item\n";
	}
	
	print "--hash---\n";
	print Dumper($hash);
	# keysで、キーの配列を取得する
	for my $key (keys(%$hash)) {
		print "$key \=\=\> $hash->{$key}\n";
	}
}

output_array_and_hash(\@array, \%hash);

