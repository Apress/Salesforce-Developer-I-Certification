// Example 1:
AccessLevel userMode = AccessLevel.USER_MODE; 
List<Opportunity> opportunitiesUserMode = Database.query 
('SELECT Name, Amount FROM Opportunity WITH USER_MODE');
System.debug('Opportunities in User Mode: ' + opportunitiesUserMode);

// Example 2:
AccessLevel systemMode = AccessLevel.SYSTEM_MODE; 
List<Opportunity> opportunitiesSystemMode = Database.query 
('SELECT Name, Amount FROM Opportunity WITH SYSTEM_MODE');
System.debug('Opportunities in System Mode: ' + opportunitiesSystemMode);
// will get an error “System.SecurityException:
