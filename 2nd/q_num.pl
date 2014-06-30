#!usr/bin/env perl
use strict;
use warnings;

use constant ANS => 10;

#
#答えを確認するのはメインどうなので、答えも出力
#
print "Please input number ".ANS." >>> ";
my $val = <STDIN>;
my $diff = $val - ANS;

#
#Coding Ex1
#
#if($val == ANS) {
#  print "Correct!!\n";
#} elsif(($val > ANS) && ($val <= (ANS+5))){
#  print "WOW to litle big!!\n";
#} elsif(($val < ANS) && ($val >= (ANS-5))){
#  print "WOW to litle small!!\n";
#
#Coding Ex2
#
#if($val == ANS) {
#  print "Correct!!\n";
#} elsif($diff >= -5 && $diff <= 5){
#  print "near\n";
#} elsif($val > ANS ){
#  print "too BIG!!\n";
#} else {
#  print "too SMALL!!\n";
#}
#
#Coding Ex3
#  ±5以内の場合はnearとtooの2コメントが出力される（elsif使ってないから）
#
print "Correct!!\n"         if($val == ANS);
print "near little big\n"   if(($val > ANS) && ($diff <= 5));
print "near little small\n" if(($val < ANS) && ($diff >= -5));
print "too Big!!\n"         if($val > ANS);
print "too Small\n"         if($val < ANS);

