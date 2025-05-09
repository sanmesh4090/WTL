<?php
$person = array(
    "name" => "John Doe",
    "age" => 25,
    "profession" => "Software Developer"
);

echo "Person Details:\n";
foreach ($person as $key => $value) {
    echo "$key: $value\n";
}
$matrix = array(
    array(1, 2, 3),
    array(4, 5, 6),
    array(7, 8, 9)
);

echo "\nMatrix:\n";
foreach ($matrix as $row) {
    foreach ($row as $element) {
        echo "$element ";
    }
    echo "\n";
}

// Checking if a key exists in an array
if (array_key_exists("age", $person)) {
    echo "\nKey 'age' exists in the \$person array.\n";
}

// Finding the size of the array
echo "\nNumber of elements in the \$matrix: " . count($matrix) . "\n";
?>