use strict;
use warnings;
use utf8;

binmode STDOUT, 'utf8';
#これは、STDOUTに日本語出力するために、warningが出ないためのもの
#これをやらないと、他のプログラムと連携すると、文字化けの原因となる

my %profile = (
  name => 'suzuki',
  sex  => 'male',
  food => 'SUSHI'
);

#my @keys = keys %profile;
print "profile hash Keys = @keys\n";
#keyの並びは取得する毎に順番が変化するため、それを防止するためには以下のように書ける
my @keys = sort keys %profile;

delete $profile{sex};

@keys = keys %profile;
print "Exists keys after delited sex key in profile hash = @keys\n";

if(exists $profile{sex}) {
  delete $profile{sex};
} else {
  print "Elements of gender does not exists.\n";
}

