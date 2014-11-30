#!/usr/bin/env perl
use strict;
use warnings;

sub add {
	my ($left, $right) = @_;
	return $left + $right;
}

sub min {
	my ($left, $right) = @_;
	return $left - $right;
}

sub mul {
	my ($left, $right) = @_;
	return $left * $right;
}

sub div {
	my ($left, $right) = @_;
	return $left / $right;
}

sub calc {
	my ($left, $right) = @_;
	return(add($left, $right), mul($left, $right));
}


print "input 1st val >>>";
my $inleft = <STDIN>;
chomp $inleft;

print "input 2nd val >>>";
my $inright = <STDIN>;
chomp $inright;

my $res = add($inleft, $inright);
if($res == ($inleft + $inright)){
	print "Well done ... Result : $res\n";
} else {
	print "NG\n";
}

$res = min($inleft, $inright);
if($res == ($inleft - $inright)){
	print "Well done ... Result : $res\n";
} else {
	print "NG\n";
}

$res = mul($inleft, $inright);
if($res == ($inleft * $inright)){
	print "Well done ... Result : $res\n";
} else {
	print "NG\n";
}

$res = div($inleft, $inright);
if($res == ($inleft / $inright)){
	print "Well done ... Result : $res\n";
} else {
	print "NG\n";
}

my ($cal_res1, $cal_res2) = calc($inleft, $inright);
print "Result : $cal_res1   ,   $cal_res2\n";
