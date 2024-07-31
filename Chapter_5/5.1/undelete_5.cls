// Example List of Strings 
List<String> fruitAccountsList = new List<String>{'Updated Apple'};

// Query the deleted records from the Recycle Bin 
List<Account> deletedAccounts = [SELECT Id FROM Account WHERE Name IN : fruitAccountsList ALL ROWS];

// Undelete the records 
Database.undelete(deletedAccounts);
// Query the undeleted records to get their details
List<Account> undeletedAccounts = [SELECT Id, Name FROM Account WHERE Id IN :deletedAccounts];
// Debug the undeleted accounts
for (Account acc : undeletedAccounts) { 
System.debug('Undeleted Account: ' + acc.Name);
}