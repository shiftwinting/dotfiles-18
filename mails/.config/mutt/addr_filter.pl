#!/usr/bin/perl

my $lc_arg = lc($ARGV[0]);
my $email_name = qr/(\S*$lc_arg\S*) <(\S*$lc_arg\S*)>/;
my $email_only = qr/\S*$lc_arg\S*@\S*/;

print "Search result :\n";
foreach my $line ( <STDIN> ) {
	if (lc($line) =~ $email_name) {
		print "$2	$1\n";
	} elsif (lc($line) =~ $email_only) {
		print "$line";
	}
}
