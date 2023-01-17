# 🙋 Questions

1. How much is the current memory capacity of a canister?
   ` Answer: expanded memory is 48GB.`

2. What is the issue with the following code sample?

```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

` Answer: Should change the let for var cause is being mutating.`

3. What is the issue with the following code sample?

```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };

  public query func see_message() : async Text {
    return(message);
  };
}
```

```Answer:
    1 - variable "message" should be a Text and is receiving a Nat
    2 - function "change_message" can't be query, because is changing the state.
```

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.
    ` Answer: False, keyword async can be removed if the function is not called out the canister`
