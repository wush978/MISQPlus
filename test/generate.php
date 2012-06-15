<?php

require_once __DIR__ . '/yml2rmd/src/RmdNode.php';
require_once __DIR__ . '/yml2rmd/src/RmdGeneratedNode.php';

$yml_src = $argv[1];

if (!file_exists($yml_src)) {
    exit(1);
}

$yml = yaml_parse_file($yml_src);
$rmd_root = new RmdNode('', 0, $yml);
$retval = $rmd_root->render();
$rmd_dst = str_replace( '.yml', '.Rmd', $yml_src );
file_put_contents( $rmd_dst, $retval );
