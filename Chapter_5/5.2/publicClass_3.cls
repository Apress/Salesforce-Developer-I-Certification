public class SimpleControllerExample {

public String greeting { get; set; 
}

public SimpleControllerExample() { greeting = 'Hello, Salesforce!';
}

public void updateGreeting(String newGreeting) { 
greeting = newGreeting;
} 
}

// Instantiate the controller and test its methods 
SimpleControllerExample myController = new SimpleControllerExample();

// Print the initial greeting
System.debug('Initial Greeting: ' + myController.greeting);

// Update the greeting 
myController.updateGreeting('New Greeting');

// Print the updated greeting
System.debug('Updated Greeting: ' + myController.greeting);