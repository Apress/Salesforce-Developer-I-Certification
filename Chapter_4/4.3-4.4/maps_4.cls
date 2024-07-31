// Exempel 1:
Map<String, Integer> ageMap = new Map<String, Integer>(); 
ageMap.put('Alice', 25);
ageMap.put('Bob', 30); 
System.debug(ageMap.get('Alice'));

// Exempel 2:
Map<String, Decimal> accountBalances = new Map<String, Decimal>(); 
accountBalances.put('Acct1', 1000.00); 
accountBalances.put('Acct2', 2500.00);
Decimal balance = accountBalances.get('Acct1'); 
System.debug('Balance of Acct1: ' + balance);

// Exempel 3:
Map<String, Integer> studentMarks = new Map<String, Integer>();

// Add key-value pairs to the map 
studentMarks.put('John', 80); 
studentMarks.put('Emily', 95); 
studentMarks.put('Michael', 75);

// Check if the map contains a specific key
Boolean containsJohn = studentMarks.containsKey('John'); 
System.debug('Does the map contain John? ' + containsJohn);
 // Output: Does the map contain John? true
// Remove a key-value pair from the map 
studentMarks.remove('Michael'); 
System.debug('Updated map: ' + studentMarks);
 // Output: Updated map: {John=80, Emily=95}

// Get a set of all keys in the map 
Set<String> keys = studentMarks.keySet(); 
System.debug('Keys in the map: ' + keys); 
// Output: Keys in the map: {John, Emily}

// Get a list of all values in the map 
List<Integer> values = studentMarks.values(); 
System.debug('Values in the map: ' + values); 
// Output: Values in the map: (80, 95)
