// Step 1: Create the new class ContactFactory in your Developer Console.
@isTest
public class ContactFactory {
public static Contact createContact(String firstName, String lastName) {
Contact newContact = new Contact(); newContact.FirstName = firstName;
newContact.LastName = lastName;        
return newContact;    
}
}

// Step 2: Create/modify the class ContactFactory in your Developer Console.

@isTest
private class TestContactTrigger {

@isTest
static void testContactTriggerWithSystemEquals() { 
// Test case using System.assertEquals
// Use the factory to create a contact
Contact testContact = ContactFactory.createContact('Max', 'Blank'); insert testContact;

// Retrieve the contact from the database to ensure trigger logic is applied
Contact insertedContact = [SELECT Id, FirstName, LastName FROM Contact 
WHERE Id = :testContact.Id];

// Verify that the trigger correctly set the standard field values using System.assertEquals
System.assertEquals('Max', insertedContact.FirstName, 
'FirstName should be set to "Max".');
System.assertEquals('Blank', insertedContact.LastName, 
'LastName should be set to "Blank".');
}

@isTest
static void testContactTriggerWithSystemAssertNotEquals() { 
// Test case using System.assertNotEquals
// Use the factory to create a contact
Contact testContact = ContactFactory.createContact('Max', 'Blank'); 
insert testContact;
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
// Use the factory to create a contact
Contact testContact = ContactFactory.createContact('Max', 'Blank'); insert testContact;

// Retrieve the contact from the database to ensure trigger logic is applied
Contact insertedContact = [SELECT Id, FirstName, LastName FROM Contact 
WHERE Id = :testContact.Id];
// Verify that the trigger correctly set the standard field values using System.assert
System.assert(insertedContact.FirstName == 'Max', 
'FirstName should be set to "Max".');
System.assert(insertedContact.LastName == 'Blank', 
'LastName should be set to "Blank".');
} 
}
