@isTest(SeeAllData=true)
private class TestWithSeeAllData {

// Using SeeAllData=true, so no @TestSetup method is required

@isTest
static void testContactTrigger() { 
// Get test data
List<Contact> testContacts = [SELECT Id, FirstName, 
LastName FROM Contact];

// Set up test data with desired field values 
List<Contact> updatedContacts = new List<Contact>(); 
for (Contact con : testContacts) {
con.FirstName = 'Max'; con.LastName = 'Blank'; 
updatedContacts.add(con);
}

// Update the contacts 
update updatedContacts;
// Verify that standard field values are set by the trigger

List<Contact> reloadedContacts = [SELECT Id, FirstName, 
LastName FROM Contact WHERE Id IN :testContacts];
for (Contact con : reloadedContacts) { 
System.assertEquals('Max', con.FirstName); 
System.assertEquals('Blank', con.LastName);
} 
}

@isTest
static void testAnotherFunctionality() { 
// Get test data
List<Contact> testContacts = [SELECT Id, 
FirstName, LastName FROM Contact];

// Add your test logic here for another functionality
// For example, you can update the test contacts with new values 
for (Contact con : testContacts) {
con.Description = 'New Description'; 
}

// Update the contacts 
update testContacts;

// Verify the results if needed
// For example, you can query the updated contacts and assert their new values

List<Contact> updatedContacts = [SELECT Id, 
Description FROM Contact WHERE Id IN :testContacts];
for (Contact con : updatedContacts) { 
System.assertEquals('New Description', con.Description);
} 
}
}
