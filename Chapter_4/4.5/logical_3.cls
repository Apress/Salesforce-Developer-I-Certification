// Logical Operators

// AND (&&): Returns true if both conditions are true.

Boolean isRaining = true; 
Boolean hasUmbrella = true;
if (isRaining && hasUmbrella) {
System.debug('You can go out with an umbrella.'); 
} 
else {
System.debug
('It\'s either not raining or you don\'t have an umbrella.'); 
}

// OR (||): Returns true if at least one of the conditions is true.

Boolean hasPermission = true; 
Boolean isAdmin = false;
if (hasPermission || isAdmin) {
System.debug('You have permission to access.'); 
} 
else {
System.debug('You do not have permission to access.'); 
}

// NOT (!): Returns the opposite boolean value of the condition.

Boolean hasPermission = false; if (!hasPermission) {
System.debug('You do not have permission to access.'); 
} 
else {
System.debug('You have permission to access.'); 
}

