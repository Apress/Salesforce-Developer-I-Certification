trigger AccountTrigger on Account (before update) {
// Static Boolean variable to track trigger execution 
private static Boolean isExecuting = false;

// Check if the trigger is already executing to avoid recursion 
if (isExecuting) {
return; }

// Set the trigger as executing to prevent recursion 
isExecuting = true;

// Get the updated accounts
List<Account> updatedAccounts = Trigger.new;

// Update the Description field for each account 
for (Account acc : updatedAccounts) {
acc.Description = 'Trigger Updated'; }

// Reset the trigger execution status 
isExecuting = false;
}
