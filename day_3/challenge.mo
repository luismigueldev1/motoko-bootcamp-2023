import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Option "mo:base/Option";

actor {
    // 1 - In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
    // second_maximum(array : [Int]) ->  Int;
    public func second_maximum(array : [Int]) : async Int {
        if(array.size() < 2) { 
          return 0;
        };
        let buffer = Buffer.fromArray<Int>(array);
        buffer.sort(Int.compare);
        return buffer.get(array.size() -  2)
       
    };

    // 2 -In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
    // remove_even(array : [Nat]) -> [Nat];
    public func  remove_even(array : [Nat]) : async  [Nat]{
        return Array.filter<Nat>(array, func x = x % 2 != 0);
    };

    // 3 - In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
    //drop<T> : (xs : [T], n : Nat) -> [T]

    //TODO: getting an error: shared function has unexpected type parameters
    // public func drop<T>(xs : [T], n: Nat) : async [T] {
    //     let buffer = Buffer.fromArray<T>(xs);
    //     let new_buffer = Buffer.split<T>(buffer, n);
    //     return Buffer.toArray<T>(new_buffer(1));
    // };

}