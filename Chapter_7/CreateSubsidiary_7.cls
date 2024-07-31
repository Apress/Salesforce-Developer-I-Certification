trigger CreateSubsidiaryAccounts on Account (after insert) {

List<Account> newSubsidiaryAccounts = new List<Account>();

for (Account acc : Trigger.new) {
// Check if BillingAddress components are empty for new accounts 
if (acc.BillingStreet == null && 
acc.BillingCity == null && 
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
}
