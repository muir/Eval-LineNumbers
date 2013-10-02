
use ExtUtils::MakeMaker;

WriteMakefile( 
	'VERSION_FROM' => 'lib/Eval/LineNumbers.pm',
	'NAME' => 'Eval-LineNumbers',
	($] >= 5.005 ?
	('ABSTRACT' => "Add line numbers to eval'ed hereis docs",
	'AUTHOR'   => 'David Muir Sharnoff <muir@idiom.org>') : ()),
	'dist' => { COMPRESS=>"gzip", SUFFIX=>"gz" },
);

