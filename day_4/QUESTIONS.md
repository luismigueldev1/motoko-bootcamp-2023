# Questions 🙋

1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
2. How much accounts can a unique Principal own?
3. Can we safely upgrade a canister from interface A to interface B?
   ` Answer: Yes, Interface B is not affecting directly a canister`

Interface A

````motoko
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
````
