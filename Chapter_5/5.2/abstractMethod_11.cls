// Abstract class
public abstract class Item {
// Abstract method to calculate some property 
public abstract Decimal calculateProperty();

// Concrete method
public void printDetails() { 
System.debug('This is an item.');
} 
}

// Subclass representing a car item 
public class CarItem extends Item { 
private Decimal fuelEfficiency;

// Constructor
public CarItem(Decimal fuelEfficiency) { 
this.fuelEfficiency = fuelEfficiency;
}

// Implementing the abstract method to calculate fuel consumption 
public override Decimal calculateProperty() {
Decimal distance = 100;
// Assume a constant distance for simplicity
Decimal fuelConsumed = distance / fuelEfficiency; 
System.debug('Calculating fuel consumption of the car:' +
fuelConsumed); 
return fuelConsumed;
} 
}

// Subclass representing a bicycle item 
public class BicycleItem extends Item {
private Decimal distanceTraveled;
// Constructor
public BicycleItem(Decimal distanceTraveled) { 
this.distanceTraveled = distanceTraveled;
}

// Implementing the abstract method to calculate distance traveled 
public override Decimal calculateProperty() {
System.debug('Calculating distance traveled by the bicycle: ' + distanceTraveled);
return distanceTraveled; 
}
}

public class Main {
public void executeMain() {
// Create an instance of the CarItem class 
CarItem carItem = new CarItem(10);

// Call the calculateProperty method
Decimal fuelConsumed = carItem.calculateProperty(); 
System.debug('Fuel consumed by the car: ' + fuelConsumed);

// Call the printDetails method inherited from the Item class

carItem.printDetails();

// Create an instance of the BicycleItem class 
BicycleItem bicycleItem = new BicycleItem(50);

// Call the calculateProperty method
Decimal distanceTraveled = bicycleItem.calculateProperty(); 
System.debug('Distance traveled by the bicycle: ' + distanceTraveled);

// Call the printDetails method inherited from the Item class

bicycleItem.printDetails(); }
}

// Instantiate the Main class and execute the main method 
Main mainInstance = new Main(); 
mainInstance.executeMain();

