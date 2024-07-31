// Step 1: Create the class MyClass and save
public class MyClass {
public String getName() { 
return 'John';
} 
}

// Step 2: Open the anonymous window 
// Without Safe Navigation Operator 
MyClass myObject = null;
String name = myObject.getName(); 
System.debug('Name: ' + name);
// This would throw a NullPointerException

// With Safe Navigation Operator 
MyClass myObject = null;
String name = myObject?.getName();
System.debug('Name: ' + name); // This will output: null

