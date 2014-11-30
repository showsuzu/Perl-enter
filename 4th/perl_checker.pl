#!/usr/bin/env perl
use strict;
use warnings;

sub perl_checker {
	my $in = shift @_;
	if ($in =~ /[pP]erl/) {
		print "Perl Monger!\n";
	}
}

print "Please input >>> ";
my $input = <STDIN>;
chomp $input;

perl_checker($input);
