# -*- perl -*-

require 5.004;
use strict;

require ExtUtils::MakeMaker;

my %opts =
  ( 'NAME' => 'DBD::File',
    'VERSION_FROM' => 'lib/DBD/File.pm',
    'dist'         => { 'SUFFIX'       => ".gz",
			'DIST_DEFAULT' => 'all tardist',
			'COMPRESS'     => "gzip -9vf" }
  );

if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
  $opts{'ABSTRACT_FROM'} = 'lib/DBD/File.pm';
  $opts{'AUTHOR'} = 'Jeff Zucker (jzuckerATcpan.org)';
}

ExtUtils::MakeMaker::WriteMakefile(%opts);

