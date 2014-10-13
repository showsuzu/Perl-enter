use strict;
use warnings;
use utf8;
use Data::Dumper;
binmode STDOUT, ":utf8";

my $papix = {
  name => 'papix',
  affiliation => 'namba.pm',
  perl => 60,
  python => 50,
  ruby => 50,
  php => 80,
  binary => 30,
};

my $boolfool = {
  name => 'boolfool',
  affiliation => 'namba.pm',
  perl => 40,
  python => 10,
  ruby => 20,
  php => 30,
  binary => 10,
};

my $moznion = {
  name => 'moznion',
  affiliation => 'hachioji.pm',
  perl => 100,
  python => 70,
  ruby => 80,
  php => 50,
  binary => 50,
};

my $binarian = {
  name => 'binarian',
  affiliation => 'hachioji.pm',
  perl => 10,
  python => 11,
  ruby => 1,
  php => 100,
  binary => 100,
};

my $uzulla = {
  name => 'uzulla',
  affiliation => 'hachioji.pm',
  perl => 1,
  python => 0.01,
  ruby => 0.5,
  php => 4,
  binary => 0.01,
};

my $average = {
};

#ここはどうやらqwコマンドは使えないようだ。
my @person_tbl = ($papix, $boolfool, $moznion, $binarian, $uzulla);
my $sum;
my $count;

for my $person (@person_tbl) {
  $sum = 0;
  $count = 0;

  print "Name:$person->{name}\n";

  my @lang_tbl = qw/ perl python ruby php binary /;
  for my $lang (@lang_tbl) {
    if(exists $person->{$lang}){
      $sum += $person->{$lang};
      $count++;

      #ここからは得点を★印で表示する処理
      print "  $lang Point : $person->{$lang}";
      if(100 == $person->{$lang}) {
        print "  stars:★★★★★\n";
      } elsif(80 <= $person->{$lang}) {
        print "  stars:★★★★\n";
      } elsif(60 <= $person->{$lang}) {
        print "  stars:★★★\n";
      } elsif(40 <= $person->{$lang}) {
        print "  stars:★★\n";
      } elsif(20 <= $person->{$lang}) {
        print "  star:★\n";
      } else {
        print "  star:-\n";
      }
    }
  }
  $person->{sum} = $sum;
#  print Dumper($person);

  #平均値の算出と出力
  $average->{$person->{name}} = $sum/$count;
  print "  $person->{name} average = $average->{$person->{name}}\n";
}

print Dumper($average);

