@isTest
private class TestContactTrigger {

@isTest
static void testContactTriggerWithSystemEquals() { 
// Test case using System.assertEquals

// Create a new contact without setting FirstName and LastName

Contact testContact = new Contact(); 
insert testContact;

// Retrieve the contact from the database to ensure trigger logic is applied
Contact insertedContact = [SELECT Id, FirstName, LastName 
FROM Contact WHERE Id = :testContact.Id];

// Verify that the trigger correctly set the standard field values using System.assertEquals
System.assertEquals('Max', insertedContact.FirstName, 
'FirstName should be set to "Max".');
System.assertEquals('Blank',	insertedContact.LastName, 
'LastName should be set to "Blank".');
}

@isTest
static void testContactTriggerWithSystemAssertNotEquals() {
 // Test case using System.assertNotEquals

// Create a new contact without setting FirstName and LastName

Contact testContact = new Contact(); insert testContact;

// Retrieve the contact from the database to ensure trigger logic is applied
Contact insertedContact = [SELECT Id, FirstName, LastName FROM Contact 
WHERE Id = :testContact.Id];

// Verify that the trigger did not set unexpected values using System.assertNotEquals
System.assertNotEquals('Unexpected Value', insertedContact.FirstName, 
'FirstName should not be "Unexpected Value".'); 
System.assertNotEquals('Unexpected Value', insertedContact.LastName, 
'LastName should not be "Unexpected Value".');
}

@isTest
static void testContactTriggerWithSystemAssert() { 
// Test case using System.assert

// Create a new contact without setting FirstName and LastName 
Contact testContact = new Contact();
insert testContact;
// Retrieve the contact from the database to ensure trigger logic is applied
Contact insertedContact = [SELECT Id, FirstName, LastName 
FROM Contact WHERE Id = :testContact.Id];
// Verify that the trigger correctly set the standard field values using System.assert
System.assert(insertedContact.FirstName == 'Max', 
'FirstName should be set to "Max".');
System.assert(insertedContact.LastName == 'Blank', 
'LastName should be set to "Blank".');
} 
}
