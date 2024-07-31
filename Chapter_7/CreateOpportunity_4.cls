trigger CreateOpportunityOnAccountInsert on Account (after insert) { 
List<Opportunity> newOpportunities = new List<Opportunity>();

for (Account acc : Trigger.new) { 
if (Trigger.isInsert) {
// Create an opportunity with account information 
Opportunity newOpportunity = new Opportunity(
Name = 'New Opportunity', StageName = 'Prospecting',
CloseDate = Date.today().addDays(30), // Set the close date as needed
AccountId = acc.Id );
newOpportunities.add(newOpportunity); 
}
}
// Insert the new opportunities
if (!newOpportunities.isEmpty()) { 
insert newOpportunities;
} 
}