// Define a list
List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5};

try {
// Access an element at a specific index (index 10 in this case) 
Integer element = numberList[10];

// Display the accessed element 
System.debug('Element at index 10: ' + element);
} 
catch (Exception ex) 
{
// Handle the exception
System.debug('Exception caught: ' + ex.getMessage()); 
}