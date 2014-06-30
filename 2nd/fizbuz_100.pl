#!/usr/bin/env perl
use strict;
use warnings;
use Term::ANSIColor;

print "==Seclect display type==\n";
print "  0:all\n";
print "  1:Fizz only\n";
print "  2:Buzz only\n";
print "  3:FizzBuzz only\n";
print "  4:Fizz & Buzz & FizzBuzz\n";
print "Please select the mode : ";

chomp(my $in = <STDIN>);

#set the string of input mode
#for same value bitween input and return from function
#
my $mode = ""; #for all and illegal input number
if($in == 1) {
  $mode = "F";
} elsif($in == 2) {
  $mode = "B";
} elsif($in == 3) {
  $mode = "FB";
} elsif($in == 4) {
  $mode = "FBFB"
}
my $ret;

for my $i (1..100) {
  # Call the FizzBuzz function
  $ret = determ_FizBuz($i);
  if($mode eq $ret ||
     $mode eq ""   ||
     ($mode eq "FBFB" && $ret ne ""))
  {
    print "num $i : ";

    if($ret eq "FB") {
      print colored ("FizzBuzz", 'red bold');
    } elsif($ret eq "F") {
      print colored ("Fizz", 'green bold');
    } elsif($ret eq "B") {
      print colored ("Buzz", 'blue bold');
    }
    print "\n";
  }
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

