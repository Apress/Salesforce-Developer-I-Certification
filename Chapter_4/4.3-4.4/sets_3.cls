// Example 1:
Set<Integer> numbers = new Set<Integer>(); 
numbers.add(5);
numbers.add(10); 
numbers.add(5); 
System.debug(numbers);

// Example 2:
List<Contact> contacts = [SELECT Email FROM Contact]; 
Set<String> uniqueEmails = new Set<String>();
for (Contact contact : contacts) { 
uniqueEmails.add(contact.Email); 
}
System.debug('Unique Email Addresses: ' + uniqueEmails);

// Example 3:
Set<String> fruits = new Set<String>();

// Add elements to the set 
fruits.add('Apple'); 
fruits.add('Banana'); 
fruits.add('Mango');

// Get the number of elements in the set 
Integer size = fruits.size(); 
System.debug('Size of the set: ' + size); // Output: Size of the set: 3

// Check if the set is empty 
Boolean isEmpty = fruits.isEmpty();
System.debug('Is the set empty? ' + isEmpty); // Output: Is the set empty? false

// Check if the set contains a specific element 
Boolean containsBanana = fruits.contains('Banana');
System.debug('Does the set contain Banana? ' + containsBanana); 
// Output: Does the set contain Banana? true

// Remove an element from the set 
fruits.remove('Banana'); 
System.debug('Updated set: ' + fruits); // Output: Updated set:{Apple, Mango}

// Clear all elements from the set 
fruits.clear();
System.debug('Cleared set: ' + fruits); // Output: Cleared set: {}

// Create another set
Set<String> moreFruits = new Set<String>{'Orange', 'Grapes'};

// Add all elements from another set 
fruits.addAll(moreFruits); 
System.debug('Combined set: ' + fruits); 
// Output: Combined set: {Orange, Grapes}

// Iterate over elements in the set 
for (String fruit : fruits) {
System.debug('Fruit: ' + fruit); 
}
