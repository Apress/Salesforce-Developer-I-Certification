// This trigger captures changes in the 'Rating' field for Lead records. 
// It leverages Trigger.size for efficient bulk processing.
trigger FieldChangeTracking on Lead (after update) {
// List to store History__c records for field changes 
List<History__c> historyRecords = new List<History__c>();

// Field API name to track changes 
String fieldToTrack = 'Rating';

// Iterate through the updated records using Trigger.size 
for (Integer i = 0; i < Trigger.size; i++) {
// Retrieve new and old versions of the Lead record 
Lead newLead = Trigger.new[i];
Lead oldLead = Trigger.old[i];

// Compare old and new values of the specified field ('Rating') 
if (oldLead != null && newLead.get(fieldToTrack) != oldLead.get(fieldToTrack)) {
// Create a new History__c record to capture the field change 
History__c history = new History__c(
Object_Id__c = newLead.Id, Field_Name__c = fieldToTrack,
Old_Value__c = String.valueOf(oldLead.get(fieldToTrack)), 
New_Value__c = String.valueOf(newLead.get(fieldToTrack))
);
// Add the history record to the list 
historyRecords.add(history);
} 
}

// Insert history records into the database if changes were detected 
if (!historyRecords.isEmpty()) {
insert historyRecords; 
}
}
