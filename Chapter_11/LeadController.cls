public with sharing class LeadController { 
@AuraEnabled(cacheable=true)
public static List<String> getLeadPicklistValues() { 
List<String> leadPicklistValues = new List<String>();

// Query distinct lead names
for (Lead lead : [SELECT Name FROM Lead WHERE Name != null LIMIT 100]) {
leadPicklistValues.add(lead.Name); 
}

return leadPicklistValues; 
}

@AuraEnabled(cacheable=true)
public static Lead getLeadDetails(String leadName) {
return [SELECT Id, Name, Status FROM Lead WHERE Name = :leadName LIMIT 1];
}
@AuraEnabled(cacheable=true)
public static List<ChangeRecordWrapper> getRelatedChanges(Id leadId) { 
List<ChangeRecordWrapper> changeRecords = new List<ChangeRecordWrapper>();

// Query the LeadChangeEvent records
for (LeadChangeEvent event : (List<LeadChangeEvent>) 
Database.query('SELECT Id, CreatedById, CreatedDate'+ 
'FROM LeadChangeEvent WHERE LeadId = :leadId ORDER BY'+ 
'CreatedDate DESC LIMIT 5')) {
ChangeRecordWrapper wrapper = new ChangeRecordWrapper(event); 
changeRecords.add(wrapper);
}

return changeRecords; }

public class ChangeRecordWrapper {
@AuraEnabled public Id Id { get; private set; }
@AuraEnabled public String CreatedById { get; private set; } 
@AuraEnabled public Datetime CreatedDate { get; private set; }

public ChangeRecordWrapper(LeadChangeEvent event) { 
this.Id = event.Id;
this.CreatedById = event.CreatedById; 
this.CreatedDate = event.CreatedDate;
}
}
}
