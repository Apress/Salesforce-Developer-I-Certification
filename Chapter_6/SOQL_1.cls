// Example 1:
String objectName = 'Account'; 
String fieldName = 'Name';
String fieldValue = 'Myname'; // Replace with the desired account name
String queryString = 'SELECT Id, ' + fieldName + ' FROM ' + 
objectName + ' WHERE ' + fieldName + ' LIKE \'%' + fieldValue + '%\''; 
List<sObject> sList = Database.query(queryString);

for (sObject s : sList) {
 System.debug(s);
}

// Example 2:
String objectName = 'Account'; 
String fieldName = 'Name'; 
String fieldValue = 'Myname';
// Replace with the desired account name

// Escape single quotes in the fieldValue variable
String queryString = 'SELECT Id, ' + fieldName + ' FROM ' + objectName + ' WHERE ' + fieldName +
' LIKE \'%' + String.escapeSingleQuotes(fieldValue) + '%\'';

List<sObject> sList = Database.query(queryString);

for (sObject s : sList) { 
System.debug(s);
}

// Example 3:
String objectName = 'Account'; 
String fieldName = 'Name'; 
String fieldValue = 'Myname';
// Replace with the desired account name

// Query using a bind variable in a static query 
List<Account> accountList =
[SELECT Id, Name FROM Account WHERE Name = :fieldValue];

for (Account acc : accountList) { 
System.debug(acc);
}
