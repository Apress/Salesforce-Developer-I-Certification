// Update: Used to modify existing records in the database.

// Example List of Strings
List<String> fruitNames = new List<String>{'Apple', 'Banana', 'Orange', 'Grapes'};

// Create a list to store Account records
List<Account> fruitAccountsList = [SELECT Id, Name FROM Account WHERE Name IN :fruitNames];
// Update all account names in the database 
for (Account account : fruitAccountsList) {
account.Name = 'Updated ' + account.Name; // Prepend 'Updated ' to each name
}

if (!fruitAccountsList.isEmpty()) { 
update fruitAccountsList;

// Iterate over the updated records to verify
for (Account updatedFruitAccount : fruitAccountsList) {
System.debug('Updated Fruit Account: ' + updatedFruitAccount.Name);
}
} 
else {
System.debug('No matching accounts found to update.'); 
}