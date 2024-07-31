// Comparison Operators

// Equality (==) and Inequality (!=): 

Integer num1 = 5; 
Integer num2 = 5;
Boolean areEqual = num1 == num2; if (areEqual) {
System.debug('num1 and num2 are equal.'); 
} 
else {
System.debug('num1 and num2 are not equal.'); 
}

// Another example with string value.

String str1 = 'Hello'; 
String str2 = 'World';
Boolean areStringsNotEqual = str1 != str2;

if (areStringsNotEqual) {
System.debug('str1 and str2 are not equal.'); 
} 
else {
System.debug('str1 and str2 are equal.');
 }

// Greater than (>): Checks if one value is greater than another.

Integer num1 = 10; 
Integer num2 = 5;

if (num1 > num2) {
System.debug('num1 is greater than num2.'); } 
else {
System.debug('num1 is not greater than num2.'); 
}

// Less than (<): Checks if one value is less than another.

Integer num1 = 5; 
Integer num2 = 10;

if (num1 < num2) {
System.debug('num1 is less than num2.'); }
else {
System.debug('num1 is not less than num2.'); 
}

// Greater than or equal to (>=): Checks if one value is greater than or equal to another.

Integer num1 = 10; 
Integer num2 = 10;

if (num1 >= num2) {
System.debug('num1 is greater than or equal to num2.'); } 
else {
System.debug('num1 is less than num2.'); 
}

// Less than or equal to (<=): Checks if one value is less than or equal to another.

Integer num1 = 5; 
Integer num2 = 5;

if (num1 <= num2) {
System.debug('num1 is less than or equal to num2.'); } 
else {
System.debug('num1 is greater than num2.'); 
}
