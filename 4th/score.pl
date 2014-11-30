#!/usr/bin/env perl
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
my @langs = qw/ perl python ruby php binary /;
my $sum;
my $count;

for my $person (@person_tbl) {
	$sum = 0;
	$count = 0;
	for my $lang (@langs) {
	    if(exists $person->{$lang}){
    		$count++;
			$sum = $sum + $person->{$lang}
		}
		#print "name:$person->{name}  , $lang:$person->{$lang}\n";
	}
	#print "name:$person->{name}  , SUM:$sum\n";
	$person->{sum} = $sum;
	print "$person->{name}\n  SUM:$person->{sum}\n";

	#平均値の算出と出力
	$average->{$person->{name}} = $sum/$count;
	print "  AVE:$average->{$person->{name}}\n";
}
print Dumper($average);
