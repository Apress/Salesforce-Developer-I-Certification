// Example List of Strings
List<String> fruitNames = new List<String>{'Apple', 'Banana', 'Orange', 'Grapes'};

// Create a list to store Account records 
List<Account> fruitAccountsList = new List<Account>();

// Populate the list with Account records 
for (String fruit : fruitNames) {
Account newFruitAccount = new Account(Name=fruit); 
fruitAccountsList.add(newFruitAccount);
}
// Insert the Account records into the database
insert fruitAccountsList;
// Query the inserted records to verify
List<Account> insertedAccounts = [SELECT Id, Name FROM Account WHERE Name IN :fruitNames];
// Iterate over the inserted records to verify 
for (Account fruitAccount : insertedAccounts) {
System.debug('Inserted Fruit Account: ' + + fruitAccount.Id + ' - ' +
fruitAccount.Name); 
}