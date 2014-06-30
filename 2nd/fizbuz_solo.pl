#!/usr/bin/env perl
use strict;
use warnings;
use Term::ANSIColor;

print "==Input number==\n";
print " number : ";

my $in = <STDIN>;
chomp $in;

#Check the input number
#入力値が数字か否かを確認する
#数字だった場合は、FizzBuzzの処理を行う
if($in =~ /^[0-9]+$/) {
#if($in =~ /\d+$/) {
  if($in <= 100) {
    # Call the FizzBuzz function
    my $ret = determ_FizBuz($in);
    print " Your input number $in is : ";

    if($ret eq "FB") {
      print colored ("FizzBuzz", 'red bold');
    } elsif($ret eq "F") {
      print colored ("Fizz", 'green bold');
    } elsif($ret eq "B") {
      print colored ("Buzz", 'yellow bold');
    }
    print "\n";
  } else {
    print colored ("So BIG.plase more small value\n", 'red bold');
  }
} else {
  print colored (" Sorry ..\n", 'red bold');
  print colored ("  This program uses only numbers...\n", 'red');
}

#
#title:cal_FizBuz
#Description: this function determine the FizzBuzz and returns the string.
#input:number of determine the FizzBuzz
#output: F=Fizz,B=Buzz,FB=FizzBuzz
#
sub determ_FizBuz {
  #Set the input number
  my $i;
  $i = shift @_;
  my $ret = "";
  if($i%3 == 0) {
    if($i%5 == 0){
      $ret = "FB";
    } else {
      $ret = "F";
    }
  }
  elsif($i%5 == 0){
    $ret = "B";
  }
  return $ret;
}

