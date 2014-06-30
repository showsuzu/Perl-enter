#!/usr/bin/env perl
use strict;
use warnings;

use constant Fav => 'perl';

print "Input perl > ";
my $val = <STDIN>;
chomp $val;

if($val eq Fav){
  print "correct!!\n";
} elsif($val gt Fav){
  print "もっと前半部分。小文字でperl\n";
} else {
  print "もっと後半部分。小文字だけどperlじゃないよ\n";
}

