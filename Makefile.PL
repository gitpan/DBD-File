# -*- perl -*-

use strict;
require ExtUtils::MakeMaker;

my %opts =
    ('NAME'         => 'DBD::File',
     'VERSION_FROM' => './File.pm',
     'dist'         => { 'SUFFIX'       => ".gz",
			 'DIST_DEFAULT' => 'all tardist',
			 'COMPRESS'     => "gzip -9vf" }
     );
if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{'AUTHOR'} = 'Jeff Zucker (jeff@vpservices.com)';
}
ExtUtils::MakeMaker::WriteMakefile(%opts);
