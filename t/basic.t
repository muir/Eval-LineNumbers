use strict;
use warnings;
use Test::More tests => 2;

use Eval::LineNumbers 'eval_line_numbers';


my $line_expected = __LINE__ + 3;
my ($line, $file) = eval eval_line_numbers <<'EOF';

(__LINE__, __FILE__)

EOF

is($file, __FILE__, 'file matches');
is($line, $line_expected, 'line number matches');
