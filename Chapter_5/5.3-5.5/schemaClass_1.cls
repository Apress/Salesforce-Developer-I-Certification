// Get the object describe for the Account object 
Schema.DescribeSObjectResult accountDescribe = Account.sObjectType.getDescribe();

// Get the object describe for the Contact object 
Schema.DescribeSObjectResult contactDescribe = Contact.sObjectType.getDescribe();

// Get the object describe for the Opportunity object 
Schema.DescribeSObjectResult opportunityDescribe = Opportunity.sObjectType.getDescribe();

// Retrieve the object label, API name, and record type information for each object
String accountLabel = accountDescribe.getLabel(); 
String accountApiName = accountDescribe.getName(); 
Map<String, Schema.RecordTypeInfo> accountRecordTypes = 
accountDescribe.getRecordTypeInfosByName();

String contactLabel = contactDescribe.getLabel(); 
String contactApiName = contactDescribe.getName(); 
Map<String, Schema.RecordTypeInfo> contactRecordTypes = 
contactDescribe.getRecordTypeInfosByName();

String opportunityLabel = opportunityDescribe.getLabel(); 
String opportunityApiName = opportunityDescribe.getName(); 
Map<String, Schema.RecordTypeInfo> opportunityRecordTypes = 
opportunityDescribe.getRecordTypeInfosByName();

// Print the retrieved information 
System.debug('Account Object - Label:' + accountLabel + 'API Name:' + accountApiName);
System.debug('Account Record Types:' + accountRecordTypes.keySet());

System.debug('Contact Object - Label:' + contactLabel + 'API Name:' + contactApiName);

System.debug('Contact Record Types:' + contactRecordTypes.keySet());

System.debug('Opportunity Object - Label:' + opportunityLabel + 'API Name:' + opportunityApiName);
System.debug('Opportunity Record Types:' + opportunityRecordTypes.keySet());