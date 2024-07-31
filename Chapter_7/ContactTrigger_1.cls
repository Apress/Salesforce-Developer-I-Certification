trigger ContactTrigger on Contact (before insert) { 
for (Contact con : Trigger.new) 
{
// Set standard field values for the newly inserted Contact records
con.firstname= 'Max'; 
con.LastName = 'Blank';
} 
}