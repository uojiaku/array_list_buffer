import Buffer "mo:base/Buffer";
actor Group {

    let bufferText = Buffer.Buffer<Text>(0); 
    let bufferInt = Buffer.Buffer<Int>(0);

    type Student = {
        name : Text;
        age : Nat;
    };

    let group = Buffer.Buffer<Student>(2);  // Should I declare it as var or let is OK? // Answer: Let but var could also work

    public func addStudent(student : Student) : async () { // Error: shared function has non-shared parameter type. WHY? // Answer : Live - 
        // more info: https://github.com/motoko-bootcamp/motoko-starter/blob/main/manuals/chapters/chapter-8/CHAPTER-8.MD#-shared-types
        group.add(student);
    };

    public func ChangeAge(studentIndex : Nat, newAge : Nat) : async () {   
        let student = group.get(studentIndex); // should I declare it as var or let is Ok?  // Asnwer : 
        let newStudent = {
            name = student.name;
            age = newAge;
        };
        group.put(studentIndex, student);
        // Is it good way to change the age?
    };
}