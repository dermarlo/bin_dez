#!/usr/bin/env perl
use warnings;
use strict;

my $input;
if ($ARGV[0]) {
	$input = $ARGV[0];
}
else {
	$input = <> || die "Missing argument [BIN]\n";
}
	chomp($input);
		if($input =~ /^[01]{1,}$/) {
			&calculation();
		}

		else {
			print "wrong input\n";
		}

sub calculation {
	my $sum = 0;
	my $exponent = 0;
	my $basis = 2;
	my $rest = $input;

	do {
			$sum = $sum+($rest%10*($basis**$exponent));
			$rest = $rest/10-(($rest%10)/10);
			$exponent++;

		} until ($rest == 0);

	print "$sum\n";
	return 0;
}

exit 0;

