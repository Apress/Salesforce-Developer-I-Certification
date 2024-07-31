// Interface Definitions 
public interface Enrollable {
void enroll(); 
}

public interface ScholarshipEligible { 
Boolean isEligibleForScholarship();
}

// Student Class Implementing Interfaces
public class Student implements Enrollable, ScholarshipEligible { 
private String name;
private Boolean enrolled; 
private Boolean hasGoodGrades;

public Student(String name, Boolean hasGoodGrades) { 
this.name = name;
this.hasGoodGrades = hasGoodGrades; 
this.enrolled = false;
// Newly created student is not enrolled by default 
}

public void enroll() { 
enrolled = true;
System.debug(name + ' has been enrolled.'); 
}

public Boolean isEligibleForScholarship() { 
return hasGoodGrades;
} 
}
// Usage Example by creating new instances 
Student student1 = new Student('John Doe', true);

student1.enroll(); // Output: John Doe has been enrolled. 
Boolean isEligible1 = student1.isEligibleForScholarship(); 
System.debug('Is eligible for scholarship: ' + isEligible1); 
// Output: Is eligible for scholarship: true

Student student2 = new Student('Jane Smith', false); 
student2.enroll(); // Output: Jane Smith has been enrolled. 
Boolean isEligible2 = student2.isEligibleForScholarship(); 
System.debug('Is eligible for scholarship: ' + isEligible2); 
// Output: Is eligible for scholarship: false