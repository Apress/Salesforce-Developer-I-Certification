// Integer:
Integer myNumber; 
myNumber = 5; 
System.debug( myNumber);

// Long: 
Long myLongNumber; 
myLongNumber = 1234567890L; 
System.debug( myLongNumber);

// Decimal: 
Decimal myDecimalNumber; 
myDecimalNumber = 123.45; 
System.debug( myDecimalNumber);

// Double:
Double myDoubleNumber; 
myDoubleNumber = 3.14159; 
System.debug( myDoubleNumber);

// Boolean: 
Boolean isTrue; isTrue = true;

if (isTrue) {
// Code to be executed if isTrue is true
 }
else {
// Code to be executed if isTrue is false 
}
System.debug( istrue);

// String: 
String myString;
myString = 'Hello, World!'; 
System.debug( myString);

// Date: 
Date myDate;
myDate = Date.today(); 
System.debug( myDate);

// Datetime: 
Datetime myDatetime; 
myDatetime = Datetime.now(); 
System.debug( myDatetime);

//Blob: 
Blob myBlob;
// Create an empty Blob
Blob emptyBlob = Blob.valueOf(''); 
System.debug(myBlob);

// ID: 
ID MyID = '001xx000003DGbKAAW'; 
System.debug(MyID);

// Object: 
// Assign an Integer to an Object variable 
Object obj = 42;
// Cast the Object variable to an Integer and perform operations 
Integer num = (Integer)obj;
Integer square = num * num;
System.debug('Number: ' + num); 
System.debug('Square: ' + square);

// SObject: 
Lead myLead = new Lead(); 
myLead.FirstName = 'Max'; 
myLead.LastName = 'James'; 
System.debug(myLead);

// Enum: 
public enum Season {
WINTER, SPRING, SUMMER, FALL
 }
Season currentSeason = Season.SUMMER;
System.debug('The current season is ' + currentSeason);

