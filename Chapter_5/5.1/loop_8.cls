// Define a set to store unique AccountIds 
Set<Id> uniqueAccountIds = new Set<Id>();

// Define a list to accumulate data for DML operation 
List<Account> accountsToUpdate = new List<Account>();

// Assume you have a loop to retrieve and process data
for (Contact contact : [SELECT Id, AccountId FROM Contact WHERE AccountId != null LIMIT 10]) {
// Check if the AccountId is unique before adding to the list 
if (!uniqueAccountIds.contains(contact.AccountId)) {
// Perform some processing on the data
Account acc = new Account(Id = contact.AccountId, Name = 'Updated Name');

// Add the modified record to the list instead of performing 
// DML inside the loop
accountsToUpdate.add(acc);

// Add the AccountId to the set to track uniqueness 
uniqueAccountIds.add(contact.AccountId);
}
 }

// Perform the DML operation outside the loop 
update accountsToUpdate;

// Debug statement to verify
System.debug('Updated Accounts: ' + accountsToUpdate);