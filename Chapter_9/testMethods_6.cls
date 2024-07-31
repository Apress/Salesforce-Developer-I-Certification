// Step 1: You can create the new class MyBatchClass in Developer Console.
public class MyBatchClass implements Database.Batchable<sObject> {

public Database.QueryLocator start(Database.BatchableContext context) {
 // Your query to retrieve the records to be processed
String query =
'SELECT Id, Email FROM Contact WHERE Email = null OR Email = \'\''; 
return Database.getQueryLocator(query);
}

public void execute(Database.BatchableContext context, 
List<Contact> contacts) {
// Update contacts with a common Email value only if the Email is empty
for (Contact con : contacts) {
if (String.isBlank(con.Email)) { 
con.Email = 'test@example.com';
// Perform additional logic if needed 
// ...
} 
}
update contacts; 
}

public void finish(Database.BatchableContext context) {
 // Optional: Add any finishing logic here
} 
}

// Step 2: Now you can create the test class MyBatchClassTest and run the test.
@isTest
private class MyBatchClassTest {

@isTest
static void testBatchClass() {
 // Create test data
List<Contact> testContacts = new List<Contact>(); for (Integer i = 0; i < 200; i++)
 {
testContacts.add(new Contact( FirstName = 'Test', LastName = 'Contact' + i, Email = ''
)); 
}
insert testContacts;

// Start the test context 
Test.startTest();

// Execute the batch job
MyBatchClass myBatch = new MyBatchClass(); Database.executeBatch(myBatch);

// Stop the test context 
Test.stopTest();

// Verify the results
List<Contact> updatedContacts = [SELECT Id, Email FROM Contact 
WHERE Email = 'test@example.com']; System.assertEquals(testContacts.size(), updatedContacts.size(), 'Match the number of test contacts');

for (Contact con : updatedContacts) { 
System.assertEquals('test@example.com', con.Email,
'Email should be updated to test@example.com'); 
}
} 
}
