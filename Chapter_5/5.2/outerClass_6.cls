// Step 1: Create the class
public class OuterClass {
public class InnerClass {
public void displayMessage() { 
System.debug('Hello from InnerClass');
} 
}
}

// Step 2: Save the class
// Step 3: Open the anonymous window
// Step 4: Test the outer class
// Example usage in the Anonymous Apex window
OuterClass outerInstance = new OuterClass();
OuterClass.InnerClass innerInstance = new OuterClass.InnerClass();

innerInstance.displayMessage();
