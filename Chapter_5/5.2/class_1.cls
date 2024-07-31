// Example 1:
public class MyFruit {
// Class variables (also known as member variables or properties) 
String fruit;
Integer count;

// Constructor with concrete values 
MyFruit() {
fruit = 'orange'; count = 1;
}

// Methods (functions defined within the class) 
public void displayInfo() {
System.debug(fruit); System.debug(count);
} 
}

// Creating an object of MyFruit and calling the constructor 
MyFruit objectFruit =new myFruit(); 
objectFruit.displayInfo();

// Example 2:
public class Fruit { public String name;
public Integer quantity;

// Default constructor 
public Fruit() {
name = 'Unknown'; quantity = 0;
}

// Parameterized constructor
public Fruit(String name, Integer quantity) { 
this.name = name;
this.quantity = quantity; 
}

// Method to display fruit information 
public void displayInfo() {
System.debug('Fruit Information:'); System.debug('Name: ' + name); 
System.debug('Quantity: ' + quantity);
}

// Method to check if the fruit is in abundance (example) 
public Boolean isInAbundance() {
// Assuming fruits with a quantity greater than 100 are considered in abundance
return quantity > 100;
 }
}

Fruit myFruit = new Fruit('Apple', 150); 
myFruit.displayInfo();
System.debug('Is it in abundance? ' + myFruit.isInAbundance());
