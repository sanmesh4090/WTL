<?php
$number = 0; // Change this value to test different conditions

// Check for all conditions
if ($number > 0) {
    echo "The number is positive.";
} elseif ($number < 0) {
    echo "The number is negative.";
} elseif ($number == 0) {
    echo "The number is zero.";
} else {
    echo "Invalid input.";
}

// Additional conditions (even/odd and divisible by a number)
if ($number != 0) {
    if ($number % 2 == 0) {
        echo " It is also an even number.";
    } else {
        echo " It is also an odd number.";
    }

    if ($number % 5 == 0) {
        echo " Additionally, it is divisible by 5.";
    } else {
        echo " It is not divisible by 5.";
    }
}
?>