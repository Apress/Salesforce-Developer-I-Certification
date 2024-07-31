// Step 1: Create a new Apex class createSubsidiaryAccounts in Developer Console:
public class SubsidiaryAccountHandler {
private static Boolean isExecuting = false;

public static void createSubsidiaryAccounts(List<Account> newAccounts) {
if (!isExecuting) { 
isExecuting = true;

List<Account> newSubsidiaryAccounts = new List<Account>();

for (Account acc : newAccounts) {
// Check if BillingAddress components are empty for new accounts 
if (acc.BillingStreet == null && acc.BillingCity ==null && 
acc.BillingState == null && 
acc.BillingPostalCode == null && 
acc.BillingCountry == null) {
// Create a new subsidiary account 
newSubsidiaryAccounts.add(new Account(
Name = 'Subsidiary Account', // Adjust as needed 
ParentId = acc.Id
)); 
}
}
// Insert new subsidiary accounts outside the loop 
if (newSubsidiaryAccounts.size() > 0) {
insert newSubsidiaryAccounts; 
}

isExecuting = false; 
}
} 
}

// Step 2: Edit createSubsidiaryAccounts Trigger
trigger CreateSubsidiaryAccounts on Account (after insert) { 
SubsidiaryAccountHandler.createSubsidiaryAccounts(Trigger.new);
}
