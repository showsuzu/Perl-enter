use strict;
use warnings;

print "input number > ";
my $input = <STDIN>;
chomp($input);

#chomp については、以下のような書き方もできる
#chomp(my $input = <STDIN>);

if(($input%2) == 0){
  print "$input = EVEN\n";
} else {
  print "$input = ODD\n";
}

