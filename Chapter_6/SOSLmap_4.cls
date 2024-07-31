List<SObjectType> searchTypes = new List<SObjectType> {
Account.SObjectType, Contact.SObjectType};
Map<SObjectType, List<SObject>> relatedRecordsMap = new Map<SObjectType, 
List<SObject>>();

// Build the SOSL query
List<List<SObject>> searchResults = [FIND '{search term}' RETURNING Account(Name), 
Contact(Name)];

// Iterate over the search results and populate the Map 
for (Integer i = 0; i < searchResults.size(); i++) {
List<SObject> records = searchResults[i]; 
SObjectType objectType = searchTypes[i]; 
relatedRecordsMap.put(objectType, records);
} 
// Access the related records from the Map
List<SObject> accountRecords = relatedRecordsMap.get(Account.SObjectType); 
List<SObject> contactRecords = relatedRecordsMap.get(Contact.SObjectType);

// Perform operations on the related records