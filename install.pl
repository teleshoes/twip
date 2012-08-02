#!/usr/bin/perl
use strict;
use warnings;

my $prefix = '/usr/local';

my @deps = qw(
  libnet-twitter-lite-perl
  libnet-oauth-perl
);

sub run(@){
  print "@_\n";
  system @_;
}

run "sudo apt-get install @deps";
run "sudo cp src/* $prefix/bin";
