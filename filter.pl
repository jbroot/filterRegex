#!/usr/bin/perl

#use strict;
use warnings;

if($#ARGV != 1){
  print STDERR "Usage: two parameters must be included\n";
  exit(1);
}

while(<STDIN>){
  #filter
  s/$ARGV[0]/eval qq("$ARGV[1]")/ge;
  #s/(a).(d)/$2$1/g;
  print;
}

exit(0);
