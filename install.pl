#!/usr/bin/perl
use strict;
use warnings;

my $prefix = '/usr/local';

my @deps = qw(
  libnet-twitter-lite-perl
  libnet-oauth-perl
);
print "Installing deps: @deps\n";
system "sudo apt-get install @deps";

my $cmd = "sudo cp src/* $prefix/bin"; 
system "echo $cmd";
system $cmd;

