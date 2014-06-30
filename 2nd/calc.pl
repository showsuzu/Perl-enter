#!/usr/bin/env perl
use strict;
use warnings;

print "入力１： ";
my $in1 = <STDIN>;
chomp $in1;
print "入力２： ";
my $in2 = <STDIN>;
chomp $in2;

print "掛けたら: $in1 * $in2 = ".($in1 * $in2)."\n";
print "足したら：$in1 + $in2 = ".($in1 + $in2)."\n";
print "引いたら: $in1 - $in2 = ".($in1 - $in2)."\n";
if($in2 <= 0){
  print "ゼロが分母なので割り算も余りも計算できません\n";
} else {
  print "割ったら：$in1 / $in2 = ".($in1 / $in2)."\n";
  print "余りは：$in1 % $in2 = ".($in1 % $in2)."\n";
}

