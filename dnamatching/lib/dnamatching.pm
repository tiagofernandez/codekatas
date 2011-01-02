package dnamatching;

use strict;
use warnings;

sub max_size(@);

sub complement($) {
	my %replace = (
    	C => "G",
    	G => "C",
    	A => "T",
    	T => "A",
	);
	
	#reverse string
	my $complement = reverse $_[0];

	#complement
	my $regex = join "|", keys %replace;
	$regex = qr/$regex/;
	$complement =~ s/($regex)/$replace{$1}/g;
	return $complement;
}


sub max_size(@) {
	my @complements;
	foreach(@_){
		push(@complements, complement($_));
	}
	
	my $matches=0;
	
	for(my $i=0;$i<@complements;++$i) {
		for(my $j=0;$j<@_;++$j) {
			if($i!=$j && $complements[$i] eq $_[$j]){
				$matches++;
			}
		}
	}
	
	#divide matches by two to avoid duplicates (ex.: A matches B -> B matches A)
	return (scalar @_ - $matches/2);
}


1;