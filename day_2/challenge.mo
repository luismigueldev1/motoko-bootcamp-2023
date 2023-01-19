import Array "mo:base/Array";
import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";

actor {
    // 1 -Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    // average_array(array : [Int]) -> async Int. 
    public query func average_array(array : [Int]) : async Int {
        var sum: Int = 0;
        for (element in array.vals()) {
            sum += element;
        };  

        return sum / array.size();
    };

    // 2 -Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    // count_character(t : Text, c : Char) -> async Nat
     public query func count_character(t : Text, c : Char) : async Nat {
        var sum: Nat = 0;
        for (element in t.chars()){
            if (element == c){
                sum += 1;
            };
        };
        return sum;
    };

    // 3 -  Write a function factorial that takes a natural number n and returns the factorial of n.
    // factorial(n : Nat) ->  async Nat
    public query func factorial(n : Nat): async Nat {
        var sum: Nat = n;
        var cursor: Nat = n - 1;
        while(cursor > 1) {
            sum *= cursor;
            cursor -= 1;

        };
        return sum;
    };

    // 4 - Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    // number_of_words(t : Text) -> async Nat 
    public query func number_of_words(t : Text) : async Nat  {
        var sum: Nat = 0;
        for (word in Text.split(t, #text " ")) {
            sum += 1;
        };
        return sum;     
    };

    // 5 - Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    // find_duplicates(a : [Nat]) -> async [Nat]
     public query func find_duplicates(a : [Nat]) : async [Nat] {
        var duplicates = Buffer.Buffer<Nat>(0);
        var original = Buffer.Buffer<Nat>(0);
        for (number in a.vals()) {
            if(Buffer.contains<Nat>(original,number, func (x : Nat, y: Nat) : Bool {x==y})){
               duplicates.add(number);
            };
            original.add(number);
        };
        return Buffer.toArray(duplicates);
    };



    // 6 -Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
    // convert_to_binary(n : Nat) -> async Text

    public query func convert_to_binary(n : Nat) : async Text {
        var number: Nat = n;
        var remainder: Text = "";
        var result: Text = "";

        while (number > 0){
            remainder := Nat.toText(number % 2);
            result := Text.concat(remainder, result);
            number := number / 2;
        };

        return result;
    };
}