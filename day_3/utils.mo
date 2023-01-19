import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import Array "mo:base/Array";

module {
   // 1 - In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
    // second_maximum(array : [Int]) ->  Int;
    public query func second_maximum(array : [Int]) : async Int {
        if(array.size() < 2) { 
          return 0;
        };
        let buffer = Buffer.fromArray<Int>(array);
        buffer.sort(Int.compare);
        return buffer.get(array.size() -  2)
       
    };

    // 2 -In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
    // remove_even(array : [Nat]) -> [Nat];
    public query func  remove_even(array : [Nat]) : async  [Nat]{
        return Array.filter<Nat>(array, func x = x % 2 != 0);
    };
}