#!/usr/bin/perl
use strict;
use warnings;

my $prefix = '/usr/local';

my $cmd = "sudo cp src/* $prefix/bin"; 
system "echo $cmd";
system $cmd;

