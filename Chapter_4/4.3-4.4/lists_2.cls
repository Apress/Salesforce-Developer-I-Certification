// Example 1:
List<String> names = new List<String>(); 
names.add('Alice');
names.add('Bob'); 
names.add('Charlie'); 
System.debug(names[1]);

// Example 2:
List<String> names = new List<String>();
names.add('Alice');
names.add('Bob'); 
names.add('Charlie'); 
System.debug(names[1]); 
names.remove(0);
for (String name : names) { 
System.debug(name);
}

// Example 3:
List<Integer> numbers = new List<Integer>();

// Add elements to the list 
numbers.add(5); 
numbers.add(2); 
numbers.add(8); 
numbers.add(1);

// Get the number of elements in the list 
Integer size = numbers.size(); 
System.debug('Size of the list: ' + size);  // Output: Size of the list: 4

// Access elements in the list 
Integer firstNumber = numbers.get(0);
System.debug('First number: ' + firstNumber); // Output: First number: 5

// Sort the elements in the list 
numbers.sort();
System.debug('Sorted list: ' + numbers); // Output: Sorted list: (1, 2, 5, 8)
