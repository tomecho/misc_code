if (!defined $ARGV[0]) {
  print STDERR "usage: 'perl fv.pl {starting_value} {monthly_contribution} {period_in_months} [interest_annually = 0.07]'\n";
  exit 1;
}

my $starting_value = $ARGV[0];
my $monthly_contribution = $ARGV[1];
my $monthly_period = $ARGV[2];
my $interest = $ARGV[3] // 0.07;

my $balance = $starting_value;
foreach (1..$monthly_period) {
  $balance = $balance + $monthly_contribution + $balance * ($interest/12);
}

print "total: $balance\nstable annual income: ${\($balance * 0.033)}";
