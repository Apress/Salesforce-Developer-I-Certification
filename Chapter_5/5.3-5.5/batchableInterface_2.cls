// Step 1:  Create the class LeadConversionBatch and save
global class LeadConversionBatch implements Database.Batchable<SObject> {
global Database.QueryLocator start(Database.BatchableContext context) {
String query = 'SELECT Id, FirstName, LastName, Email, Company ' +
 'FROM Lead WHERE IsConverted = false AND Status = \'Qualified\''; 
return Database.getQueryLocator(query);
}

global void execute(Database.BatchableContext context, List<Lead> leadRecords) {
List<Database.LeadConvert> leadsToConvert = new List<Database.LeadConvert>();

for (Lead lead : leadRecords) {
Database.LeadConvert lc = new Database.LeadConvert(); 
lc.setLeadId(lead.Id);
lc.setConvertedStatus('Qualified'); // Use appropriate status 
leadsToConvert.add(lc);
}

if (!leadsToConvert.isEmpty()) { 
try {
List<Database.LeadConvertResult> 
lcr = Database.convertLead(leadsToConvert);
// Process the results if needed 
} 
catch (Exception e)
 {
// Handle any exceptions 
}
}
}

global void finish(Database.BatchableContext context) { 
// Any post-processing logic can go here
} 
}


// Step 2: Open the anonymous window 
// Step 3: Insure you have already some leads in your org converted
// Step 4: Print the Batch Job ID to the debug log in the Developer Console
// Execute the batch job immediately
LeadConversionBatch leadBatch = new LeadConversionBatch(); 
String jobId = Database.executeBatch(leadBatch);

// Print the job ID for reference 
System.debug('Batch Job ID: ' + jobId);
