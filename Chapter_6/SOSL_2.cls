List<List<SObject>> searchResults = [FIND 'apple' IN ALL FIELDS RETURNING 
Account (Id, Name), Contact (Id, FirstName, LastName)];
for (List<SObject> resultList : searchResults) 
{ 
for (SObject record : resultList) 
{
if (record instanceof Account) 
{
Account accountRecord = (Account) record; 
System.debug('Account Name: ' + accountRecord.Name); 
// Do something with the account record
} 
else if (record instanceof Contact) { 
Contact contactRecord = (Contact) record;
System.debug('Contact Name: ' + contactRecord.FirstName + ' ' 
+ contactRecord.LastName);
// Do something with the contact record 
}
} 
}

