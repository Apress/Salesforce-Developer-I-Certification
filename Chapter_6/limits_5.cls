// Set the batch size for pagination 
Integer batchSize = 100;

// Set the initial offset for pagination 
Id lastRecordId = null;

// Initialize a list to store the retrieved records 
List<Account> accounts = new List<Account>();
while (true) {
// Check the heap size before executing the query 
Long startHeapSize = Limits.getHeapSize();

// Query records with pagination using WHERE and ORDER BY 
List<Account> queryResults = [
SELECT Id, Name FROM Account WHERE Id > :lastRecordId ORDER BY Id
LIMIT :batchSize ];

// Check the heap size after adding records 
Long endHeapSize = Limits.getHeapSize();

// Check if adding the current batch exceeds the heap size limit 
if (endHeapSize - startHeapSize >= Limits.getLimitHeapSize()) {
// Perform necessary operations when approaching heap size limit

// ...

// Break the loop to avoid exceeding the heap size limit

break; 
}

// Add the retrieved records to the list 
accounts.addAll(queryResults);

// Break the loop if all records have been retrieved 
if (queryResults.size() < batchSize) {
break; 
}

// Update the last record ID for the next batch 
lastRecordId = queryResults[queryResults.size() - 1].Id;
}

// Process the retrieved records 
for (Account account : accounts) {
// Perform necessary operations on each account 
}
