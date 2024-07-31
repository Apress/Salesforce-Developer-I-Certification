public class Item {
public virtual void calculateProperty() { 
System.debug('Calculating some property of the item');
} 
}

public class Car extends Item { 
private Decimal fuelEfficiency;

public Car(Decimal fuelEfficiency) { 
this.fuelEfficiency = fuelEfficiency;
}

public override void calculateProperty() { 
Decimal distance = 100;
// Assume a constant distance for simplicity
Decimal fuelConsumed = distance / fuelEfficiency; 
System.debug('Calculating fuel consumption of the car: ' +
fuelConsumed); 
}
}

public class Bicycle extends Item { 
private Decimal distanceTraveled;

public Bicycle(Decimal distanceTraveled) { 
this.distanceTraveled = distanceTraveled;
}

public override void calculateProperty() { 
System.debug('Calculating distance traveled by the bicycle: ' +
distanceTraveled); 
}
}

// Usage
Item genericItem = new Item(); 
genericItem.calculateProperty();
// Output: Calculating some property of the item

Item car = new Car(10);	// Car with fuel efficiency 10 
car.calculateProperty();
// Output: Calculating fuel consumption of the car: 10.0

Item bicycle = new Bicycle(50);	// Bicycle with 50 km distance traveled 
bicycle.calculateProperty();
// Output: Calculating distance traveled by the bicycle: 50.0