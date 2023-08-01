import List "mo:base/List"
actor TestList {
    
    type List<Nat> = ?(Nat, List<Nat>);
    var ageStudents : List<Nat> = List.nil();

    public func addStudent(age : Nat) : async () {
        ageStudents := List.push(age, ageStudents);
    };

    public query func showStudents() : async List<Nat> {
        return ageStudents;
    };

    public func removeStudent(age: Nat ) : async () {
        ageStudents := List.filter<Nat>(ageStudents, func(x : Nat) { age != x}); 
    };
}

// dfx canister call list addStudent '(20)'
// dfx canister call list showStudents
// dfx canister call list addStudent '(30)'
// make sure you redeploy after making changes to canister