// Step 1: Open Developer Console ➤ File ➤ New ➤ Apex class 
global class MyManagedPackageClass {
// A method that is exposed for use by organizations installing the managed package
global static String processData(String input) { 
// Some logic to process the input data 
return 'Processed data: ' + input;
}

// Another method that is exposed
global static Integer calculateSum(Integer a, Integer b) { 
// Some logic to calculate the sum
return a + b;
 }
}

// Step 2: Save the new class 
// Step 3: Open the anonymous window
// Step 4: Execute the global class 
// Call global methods from the managed package in the anonymous window
String result = MyManagedPackageClass.processData('Input data'); 
Integer sum = MyManagedPackageClass.calculateSum(3, 5);

System.debug('Result: ' + result); 
System.debug('Sum: ' + sum);
