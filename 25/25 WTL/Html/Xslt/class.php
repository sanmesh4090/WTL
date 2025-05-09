class Books{
 var $price=100;
 function display(){
 echo"Price in the Class method : ".$this->price ;
 }
 }
 $b=new Books();
 $b->display();
 echo"Price outside class : ".$b->price;
?>