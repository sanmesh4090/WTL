<?php
class Person {
    public $name; 
    public $age;  

    public function displayInfo() {
        echo "Name: " . $this->name . "\n";
        echo "Age: " . $this->age . "\n";
    }
}

$person = new Person();
$person->name = "Aniket"; 
$person->age = 21;      
$person->displayInfo(); 