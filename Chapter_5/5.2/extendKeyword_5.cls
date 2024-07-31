// Step 1: Create the ParentClass
public virtual class ParentClass {
public void displayMessage() { 
System.debug('Hello from ParentClass');
}
 }

// Step 2: Save the ParentClass
// Step 3: Create the ChildClass
public class ChildClass extends ParentClass { 
public void displayChildMessage() {
System.debug('Hello from ChildClass'); 
}
}

// Step 4: Save the ChildClass
// Step 5: Open the anonymous window
// Step 6: Test the ParentClass and ChildClass
ChildClass childInstance = new ChildClass(); 
childInstance.displayMessage();
// This will call the method from ParentClass 
childInstance.displayChildMessage();
// This will call the method from ChildClass
