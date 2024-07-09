#!/usr/bin/env perl
use strict;
use warnings;
use FindBin;

#This script reads in a txt file and then searches it to find lines that contain the words egg or eggs
#and then writes those lines to an output file you named in the script arguments
#Ex perl main.pl output.txt

my $dir = $FindBin::Bin; #Gets us the directory where the perl script is located 
my $fileName = $ARGV[0];

sub main{
    my $inFile = "$dir/mymanjeeves.txt";
    my $outFile = "$dir/$fileName";
    open(my $INPUT_FH, $inFile) || die "Open of $inFile failed!\n";
    open(my $OUTPUT_FH, '>'.$outFile) || die "Can not create $outFile\n";
    while(my $line = <$INPUT_FH>){
        if($line =~ / egg / || $line =~ / eggs / ){
            print $OUTPUT_FH $line;
        }
    }

        close($OUTPUT_FH);
        close($INPUT_FH);
}

main();