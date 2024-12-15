#!/usr/bin/perl

use strict;
use warnings;

my $count = 0;

while (<>) {
    $count++;
    if ($count > 1000000) { #Process only first million lines
        last;
    }
    #Process each line
    #some processing here...
    undef $_; #Explicitly undefine the current line
}

print "Processed $count lines\n";