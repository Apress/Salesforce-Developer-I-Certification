// Assignment Operators

// Assign (=): Assigns a value to a variable.
Integer num1 = 5; Integer num2;
num2 = num1;
System.debug('num1: ' + num1); System.debug('num2: ' + num2);

// Addition assignment (+=): Adds a value to the current value of a variable and assigns the result to the same variable.
Integer total = 10; 
Integer increment = 5; total += increment;
System.debug('Updated total: ' + total); // Output: Updated total: 15

// Subtraction assignment (-=): Subtracts a value from the current value of a variable and assigns the result to the same variable.
Integer total = 20; 
Integer decrement = 8; total -= decrement;
System.debug('Updated total: ' + total); // Output: Updated total: 12

// Multiplication assignment (*=): Multiplies the current value of a variable by a value and assigns the result to the same variable.
Integer base = 5; 
Integer multiplier = 3;
base *= multiplier; // Equivalent to: base = base * multiplier; 
System.debug('Result: ' + base); // Output: Result: 15

// Division assignment (/=): Divides the current value of a variable by a value and assigns the result to the same variable.
Decimal dividend = 20.0; 
Decimal divisor = 4.0;
dividend /= divisor; // Equivalent to: dividend = dividend /divisor; 
System.debug('Result: ' + dividend); // Output: Result: 5.0

