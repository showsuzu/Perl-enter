use strict;
use warnings;

my @array = (1 .. 100);
my $sum2 = 0;

for my $i2 (@array) {
#  $sum2 = $sum2 + $i2;
  $sum2 += $i2;
}

print "SUM2 = $sum2\n";

