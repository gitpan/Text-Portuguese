use Test;
BEGIN { plan tests => 12 };
use Text::Portuguese;
use Text::Galician;

##########################################################################
@ptword = Text::Portuguese::stem(qw(bons chilena pezinho 
				    existencialista beberiam));
@ptstem = qw(bom chilen pe exist beb);

ok(1);
ok($ptword[$_], $ptstem[$_]) for (0..$#ptword);


##########################################################################
@glword = Text::Galician::stem(qw(bons chilena cazola
				  preconceituoso chegou));
@glstem = qw(bon chilen caz preconceit cheg);

ok(1);
ok($glword[$_], $glstem[$_]) for (0..$#glword);
