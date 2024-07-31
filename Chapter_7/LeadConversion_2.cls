trigger LeadConversionValidation on Lead (before update) { 
List<Lead> leadsToConvert = new List<Lead>();

// Iterate through the leads being updated (converted) 
for (Lead lead : Trigger.new) {
if (lead.IsConverted) { 
leadsToConvert.add(lead);
} 
}

// Check lead scores before conversion
for (Lead convertedLead : leadsToConvert) { 
if (convertedLead.Rating != 'Hot') {
convertedLead.addError
('Leads must have a lead rating of "Hot" to be converted.'); 
}
} 
}
