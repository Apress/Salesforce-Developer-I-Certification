Account masterAccount = new Account(Name = 'MyName'); 
insert masterAccount;
Account duplicateAccount = new Account(Name = 'MyName'); 
insert duplicateAccount;
Database.merge(masterAccount, duplicateAccount); // Perform the merge operation 
// Query the master account to get its updated state
masterAccount = [SELECT Id, Name, (SELECT Id FROM Contacts) FROM Account WHERE Id = :masterAccount.Id];
// Verify the result of the merge operation
System.debug('Merged Account Name: ' + masterAccount.Name);