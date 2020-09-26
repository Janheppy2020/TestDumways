<?php
$str = 'cipto';
$l = strlen($str);
$result = '';
while ($l--) {
    $result = str_pad(decbin(ord($str[$l])), 8, "0", STR_PAD_LEFT) . ' ' . $result;
}
print $result;

//01001000 - 01100101 - 01101100 - 01101100 - 01101111 - 00100000 - 01110111 - 01101111 - 01110010 - 01101100 - 01100100
?>