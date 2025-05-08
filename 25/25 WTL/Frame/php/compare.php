<?php
    $a = 20;
    $b = 10;
    $c = 10;
    echo"Value of A is $a<br>";
    echo"Value of B is $b<br>";
    echo"Value of C is $c<br>";
    if($a==$b){
        echo"$a is equal to $b<br>";
    }else{
        echo"$a is not equal to $b<br>";
    }
    if($a===$b){
        echo"$a is identical to $b<br>";
    }else{
        echo"$a is not identical to $b<br>";
    }
    if($a>$b){
        echo"$a is greater than $b<br>";
    }else{
        echo"$a is not less than $b<br>";
    }

    if($b==$c){
        echo"$b is equal to $c<br>";
    }else{
        echo"$b is not equal to $c<br>";
    }
    if($b===$c){
        echo"$b is identical to $c<br>";
    }else{
        echo"$ba is not identical to $c<br>";
    }
    if($b>=$c){
        echo"$b is greater than equal to $c<br>";
    }else{
        echo"$b is not less than $c<br>";
    }
?>