// Step 1: Create the class vehicle and save
public virtual class Vehicle {
public virtual void startEngine() { 
System.debug('Engine started.');
} 
}

// Step 2: Create the class car and save
public class Car extends Vehicle {
public override void startEngine() { 
System.debug('Car engine started.'); 
System.debug('Step on the gas pedal.');
} 
}

// Step 3: Open the anonymous window 
// Step 4: Create the new instance of the car
Car car = new Car(); 
car.startEngine();
