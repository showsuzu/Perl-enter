#!/usr/bin/env perl
use strict;
use warnings;

use constant MAX => 3;
my @array;

for my $val (0..(MAX-1)){
  print "Please input string:No.$val >";
  $array[$val] = <STDIN>;
  chomp $array[$val];
#  print "$array[$val]\n";
}
my @sorted = sort {$a cmp $b}@array;
#これだと連結子に引っ張られて数値になるらしい。よって@arrayの配列数"3"が出力される
print @array."\n";
#これだと各配列の値がスペースで区切られない
print for @array;
print "\n";
#これだと各配列の値にスペースが入る
print "@sorted\n";

#うーむ違うもんだね

