// Step 1: Open Developer Console ➤ File ➤ New ➤ Apex class 
public class MyOuterClass {
private class MyPrivateClass { 
public void myMethod() {
System.debug('Hello PrivateClass'); 
}
}

private Integer count = 2;

public void callPrivateMethod() { 
MyPrivateClass obj = new MyPrivateClass(); 
obj.myMethod();
displayInfo(); 
}

public void displayInfo() { 
System.debug(count);
}

public Integer getCount() { 
return count;
} 
}

// Step 2: Save the class
// Step 3: Open the anonymous window
// Step 4: Test the public class
MyOuterClass outerInstance = new MyOuterClass(); 
outerInstance.callPrivateMethod();
Integer countValue = outerInstance.getCount(); 
System.debug('Count from getCount method: ' + countValue);
