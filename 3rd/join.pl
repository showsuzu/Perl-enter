use strict;
use warnings;
use utf8;

my @array = qw/0120 123 XXX/;
print "Num array = @array\n";

my $num = join '-', @array;
print "num = $num\n";

my $string = '/usr/bin/env perl';
print "string = $string\n";

my @array2 = split /\//, $string;
#split文字は、スラッシュで囲んでいるので、スラッシュを区切り文字にしたい場合はエスケープしてあげる必要がある

print "Split array = @array2\n";

#出力結果の〇番目には空欄が入る
#これは、スプリット文字が一番最初に入っているためです

