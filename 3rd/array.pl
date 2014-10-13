use strict;
use warnings;
use utf8;

my @array = ('Alice' , 'Bob');
print "----------\n";
print "Array = @array\n";

my $element = shift(@array);
print "get element by shift = $element\n";
print "----------\n";

@array = ('Alice' , 'Bob');
$element = pop(@array);
print "get element by pop = $element\n";
print "----------\n";

@array = ('Alice' , 'Bob');
push @array, 'Chris';
unshift @array, 'Zappa';
print "Array = @array\n";
print "----------\n";

