List<Contact> contactsToUpdate = new List<Contact>();

// Query for Account records created in the last month
Date lastMonthStartDate = Date.today().addMonths(-1).toStartOfMonth(); 
Date lastMonthEndDate = Date.today().toStartOfMonth();
Set<Id> accountIds = new Set<Id>();
for (Account acc : [SELECT Id FROM Account WHERE CreatedDate >= :lastMonthStartDate 
AND CreatedDate < :lastMonthEndDate]) {
accountIds.add(acc.Id); 
}

// Query related Contacts for the dynamically obtained Account Ids outside the loop
List<Contact> relatedContacts = [SELECT Id, Name, Title FROM Contact 
WHERE AccountId IN :accountIds];

// Update the Title field on contacts 
for (Contact con : relatedContacts) {
Contact updatedContact = new Contact(Id = con.Id); 
updatedContact.Title = 'Updated Value'; 
contactsToUpdate.add(updatedContact);
}
// Perform bulk update if there are contacts to update 
if (!contactsToUpdate.isEmpty()) {
update contactsToUpdate; 
}