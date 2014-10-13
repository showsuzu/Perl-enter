use strict;
use warnings;
use utf8;
use Data::Dumper;

my $papix = {
  name    => 'papix',
  address => 'Tokyo',
  age     => 25,
};

print "raw data = $papix\n";
print Dumper($papix);

