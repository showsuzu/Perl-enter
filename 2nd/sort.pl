#!/usr/bin/env perl
use strict;
use warnings;

use constant MAX => 3;
my @array;

for my $val (0..(MAX-1)){
  print "Please input string:No.$val >";
  $array[$val] = <STDIN>;
  chomp $array[$val];
#  print "$array[$val]\n";
}
my @sorted = sort {$a cmp $b}@array;
#���ꂾ�ƘA���q�Ɉ��������Đ��l�ɂȂ�炵���B�����@array�̔z��"3"���o�͂����
print @array."\n";
#���ꂾ�Ɗe�z��̒l���X�y�[�X�ŋ�؂��Ȃ�
print for @array;
print "\n";
#���ꂾ�Ɗe�z��̒l�ɃX�y�[�X������
print "@sorted\n";

#���[�ވႤ���񂾂�

