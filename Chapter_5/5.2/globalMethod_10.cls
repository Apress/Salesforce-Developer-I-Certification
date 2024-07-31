// Step 1: Create the class and save
global class MyGlobalClass {
global Integer myGlobalMethod() { 
// Your code here
return 5; // Example return statement 
}
}

// Step 2: Create another class and save
public class MyCallingClass {
public static void callGlobalMethod() {
MyGlobalClass myGlobalInstance = new MyGlobalClass(); 
Integer result = myGlobalInstance.myGlobalMethod();
System.debug('Result: ' + result); // Example debug statement 
}
}

// Step 3: Open the anonymous window 
// Step 4: Test the global class
MyCallingClass.callGlobalMethod();

