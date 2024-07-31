List<Opportunity> opportunities = [SELECT Name, Amount, StageName FROM Opportunity];
List<Opportunity> sanitizedOpportunities = new List<Opportunity>();

for (Opportunity opp : opportunities) { 
if (Schema.sObjectType.Opportunity.fields.StageName.isAccessible () && 
opp.StageName == 'Prospecting') {
Opportunity sanitizedOpp = new Opportunity(); 
sanitizedOpp.Name = opp.Name; 
sanitizedOpp.Amount = opp.Amount; sanitizedOpportunities.add(sanitizedOpp);
} 
}

System.debug('Sanitized Opportunities: ' + sanitizedOpportunities);