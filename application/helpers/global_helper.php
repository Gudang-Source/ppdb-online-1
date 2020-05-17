<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
function dd($data)
{
    var_dump($data);
    die();
}

function columnLetter($c)
{
    $c = intval($c);
    if ($c <= 0) return '';

    $letter = '';

    while ($c != 0) {
        $p = ($c - 1) % 26;
        $c = intval(($c - $p) / 26);
        $letter = chr(65 + $p) . $letter;
    }

    return $letter;
}
