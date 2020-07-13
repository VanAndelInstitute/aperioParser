#!/usr/bin/perl

print "{\n";
while (<>)
{
	chomp;
	my @list = split /\|/;
	for my $entry (@list)
	{
		next unless $entry =~ /\=/;
		$entry =~ /(\S+)\s*=\s*(\S+)/;	
		print "\"$1\":\"$2\"\n";
	}
}
print "}\n";
