// Step 1: Create the class
public class StringUtil {
public static String capitalizeFirstLetter(String input) {
if (String.isBlank(input)) {
return input; 
}

return input.substring(0, 1).toUpperCase() + input.substring(1); 
}
}

// Step 2: Save the class
// Step 3: Open the anonymous window
// Step 4: Test the public class
// Example usage in the Anonymous Apex window
String inputString = 'hello';
String capitalizedString = StringUtil.capitalizeFirstLetter(inputString); 
System.debug('Original String: ' + inputString); 
System.debug('Capitalized String: ' + capitalizedString);
