List<Account> accounts = [SELECT Id, Name, AccountNumber, Description FROM Account LIMIT 2];

// Add SObjectAccessDecision to strip inaccessible records 
SObjectAccessDecision decision = Security.stripInaccessible (AccessType.READABLE, accounts);

// Retrieve the sanitized account records
List<Account> sanitizedAccounts = decision.getRecords();

// Modify the Name field of the first account in the list 
if (!sanitizedAccounts.isEmpty()) {
Account firstAccount = sanitizedAccounts[0]; 
firstAccount.Name = 'New Updated Name';
}

// Perform DML to update the modified account 
if (!sanitizedAccounts.isEmpty()) {
update sanitizedAccounts; 
}

// Retrieve the updated account records
List<Account> updatedAccounts = [SELECT Id, Name, AccountNumber, 
Description FROM Account WHERE Id IN :sanitizedAccounts];

// Add debug statement to display the updated account records 
System.debug('Updated Accounts: ' + updatedAccounts);
