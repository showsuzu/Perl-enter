## Perl入学式 in 東京 #2  2014/6/28


#### おまじないを忘れずに
* ''#!/usr/bin/env perl''
* ''use strict;''
* ''use warnings;''

#### 定数は以下のように定義する
* ''use constant ANS => 10;''

#### Perlの変数に付ける
* $ はスカラ(Scalar)のS
* @ は配列(Array)
* % はハッシュ(Hash)

* 演算子、命令の優先順位があるようだ。
  * http://perldoc.jp/docs/perl/5.18.1/perlop.pod

#### 練習問題
> 1. hello.pl
> > Hello, Worldという文字列を出力する
> 
> 2. profile.pl
> > 自分の名前, 年齢, 身長などの情報をそれぞれname, age, heightといったスカラ変数に格納し, それらの値を出力するスクリプト
> 
> 3. calc.pl
> > 標準入力から変数を2つ読み込み, それらを四則演算(+, -, *, /)した結果を出力するスクリプト
> 
> 4. q_word.pl
> > 簡単な文字当てゲーム
> 
> 5. question_num.pl
> > 簡単な数当てゲーム
> > 端末から数字を一つ入力し, その数字が$answerと一致したらOK, $answerより大きければtoo big, 
> > 小さければtoo smallと表示します
> > オプション: 入力した値が, $answerから-5〜+5の範囲内(例えば, $answerが10なら, 5〜15)の場合, nearと表示
> 
> 6. sort.pl
> > 配列@arrayに<STDIN>を使って3つの文字列を格納し, これを｢文字列として｣ソートしたものを出力する
> > ヒント: @arrayに文字列を3個入力する処理は, <STDIN>を3回書くのではなく, for文を使ってシンプルに書いてみよう
> 
> 7. fizzbuzz.pl
> > 1から100までの数字について, その数字が3で割り切れるならFizz, 
> > 5で割り切れるならBuzz,
> > 3でも5でも割り切れるならFizzBuzz, 
> > それ以外ならばその数字自身を出力する
