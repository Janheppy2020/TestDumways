<?php

    function segitigaKetupat($input){
        for ($i = 0; $i < $input / 2; $i++) {
            for ($j = 0; $j < $input / 2 - $i; $j++){
               echo "&nbsp&nbsp&nbsp";
            }
            for ($j = 0; $j < 2 * $i + 2; $j++){
               if ($i == 0 || $j == 0 || $j == 2 * $i + 1)
                    echo "*";
               else
                    echo "&nbsp&nbsp&nbsp";
            }
            echo "<br>";
        }
        for ($i= $input / 2 - 1; $i >= 0;$i--) {
            for ($j = 0; $j < $input / 2 - $i; $j++){
               echo "&nbsp&nbsp&nbsp";
            }
            for ($j = 0;$j < 2 * $i + 2; $j++){
               if ($i == $input / 2 || $j == 0 || $j == 2 * $i + 1)
                    echo "*";
               else
                    echo "&nbsp&nbsp&nbsp";
            }
            echo "<br>";
        }
    }
    
    segitigaKetupat(9);
    
?>