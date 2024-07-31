// if Statement:
Integer x = 10; if (x > 5) {
System.debug('x is greater than 5'); 
}
 else {
System.debug('x is not greater than 5');
 }

// switch Statement: 
String fruit = 'apple';
switch on fruit { 
when 'apple' {
System.debug('You selected an apple.'); 
}
when 'banana' {
System.debug('You selected a banana.');
}
when else {
System.debug('You selected a different fruit.'); 
}
}

// for Loop: 
for (Integer i = 0; i < 10; i++) { 
System.debug('The value of i is: ' + i);
}

List<Integer> numbers = new List<Integer>{1, 2, 3, 4, 5};

for (Integer num : numbers) { 
System.debug('Number: ' + num);
}

// while Loop: 
Integer count = 2; while (count <= 6) {
System.debug('Number: ' + count); count += 2;
}

// do-while Loop:
Integer count = 1; do {
System.debug('Count: ' + count); count++;
} 
while (count <= 0);

// break Statement: 
// Declare and initialize a list of integers 

List<Integer> numbers = new List<Integer>{1, 2, 3, 4, 5};

// Use a for loop to iterate over the list 
for (Integer num : numbers) {
if (num == 3) { 
break;
}
System.debug('Number: ' + num); 
}

// continue Statement: 
for (Integer i = 1; i <= 5; i++) 
{ 
if (i == 3) {
continue; 
}
System.debug('Current i: ' + i); 
}



