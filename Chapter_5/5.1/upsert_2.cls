// Example List of Strings
List<String> fruitNames = new List<String>{'Apple', 'Banana', 'Orange', 'Grapes'};

// Create a list to store Account records 
List<Account> fruitAccountsList = new List<Account>();

// Populate the list with Account records 
for (String fruit : fruitNames) {
Account newFruitAccount = new Account(Name=fruit); 
fruitAccountsList.add(newFruitAccount);
}

// Upsert the Account records using Database.upsert

Database.upsert(fruitAccountsList, false); // Upsert the Account records
List<Account> upsertedAccounts = [SELECT Id, Name FROM Account WHERE Name IN :fruitNames];
// Iterate over the upserted records to verify
for (Account fruitAccount : fruitAccountsList) {
System.debug('Upserted Fruit Account: ' + fruitAccount); 
}