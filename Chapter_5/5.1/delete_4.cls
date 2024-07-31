// Example List of Strings
List<String> fruitAccountsList = new List<String>{'Updated Apple'};

// Query the Account records with the updated alternative names 
List<Account> accountsToDelete = [SELECT Id FROM Account WHERE Name IN :fruitAccountsList];
// Delete the records from the database 
delete accountsToDelete;
// Show that the records are deleted 
String deletedAccountIds = ' ';
for (Account deletedAccount : accountsToDelete) { 
deletedAccountIds += deletedAccount.Id + ', ';
}
System.debug('Deleted Fruit Account IDs: ' + deletedAccountIds);