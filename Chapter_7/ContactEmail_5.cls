trigger ContactEmailUpdate on Contact (after update) {
// Check if the trigger is running after the update operation 
if (Trigger.isAfter) {
// Create a list to hold the updated contacts 
List<Contact> updatedContacts = new List<Contact>();

// Iterate through the updated contacts 
for (Contact contact : Trigger.new) {
// Check if the email field has been changed
if (contact.Email != Trigger.oldMap.get(contact.Id).Email) { 
// Add the updated contact to the list 
updatedContacts.add(contact);
} 
}

// Check if there are any updated contacts 
if (!updatedContacts.isEmpty()) {
// Create a Chatter feed item for each updated contact 
List<FeedItem> feedItems = new List<FeedItem>();

for (Contact contact : updatedContacts) {
// Create the Chatter feed item with the new email information
FeedItem feedItem = new FeedItem(); 
feedItem.ParentId = contact.Id;
feedItem.Body = 'The email for the contact ' + contact.Name + 
' has been updated to ' + contact.Email;
feedItem.Type = 'TextPost';

feedItems.add(feedItem); 
}

// Insert the Chatter feed items 
insert feedItems;
} 
}
}
