List<Account> accountsToInsert = new List<Account>();

// Adding sample Account records to the list 
accountsToInsert.add(new Account(Name='Account1')); 
accountsToInsert.add(new Account(Name='Account2')); 
accountsToInsert.add(new Account(Name='Account3'));

// Perform DML operation (insert) 
insert accountsToInsert;

// Check the number of records affected by DML 
operation Integer dmlRows = Limits.getDMLRows();
System.debug('Number of records affected by DML operation: ' + dmlRows);