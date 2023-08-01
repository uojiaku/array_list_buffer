import Buffer "mo:base/Buffer";
actor Group {
    type Student = {
        name : Text;
        var age : Nat;
    };

    let group = Buffer.Buffer<Student>(2);  // Should I declare it as var or let is OK?

    public func addStudent(student : Student) : async () { // Error: shared function has non-shared parameter type. WHY?
        group.add(student);
    };

    public func ChangeAge(studentIndex : Nat, newAge : Nat) : async () {   
        var student = group.get(studentIndex); // should I declare it as var or let is Ok?
        student.age := newAge;
        group.put(studentIndex, student);
        // Is it good way to change the age?
    }
}