<?php
class Car {
    public $brand;
    public $color;
   
    function setBrand($b) {
        $this->brand = $b;
    }
   
    function getBrand() {
        return $this->brand;
    }
}

$myCar = new Car(); 

$myCar->setBrand("Toyota");

echo $myCar->getBrand(); 
?>