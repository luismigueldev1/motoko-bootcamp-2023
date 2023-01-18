# Questions 🙋

1. Who controls the ledger canister?
   `Answer: NNS DAO`
2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?
   `Answer: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe and running 16 nodes. `
   [Source](https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe)

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
   `Answer: voting power is 9.375`
4. What is wrong with the following code?

```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };

}
```

`Answer: to use a Nat methods and functions first need to import the module from motoko base`
`import Nat "mo:base/Nat";`

```
import Nat "mo:base/Nat";
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };

}
```

5. What is wrong with the following code?

```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };

}
```

`Answer: `
`First: you need to import Array to change the return of the function show_language.
import Array "mo:base/Array";`

`Second: change the mutability in the array language
let languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];`

`Third: Change the return of the function show_language and type of data.
 public func show_languages(language: Text) : async [Text] {
    return Array.freeze(languages);
  };`

```
import Array "mo:base/Array";

actor {
  let languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language: Text) : async [Text] {
    return Array.freeze(languages);
  };

}
```

6. What is wrong with the following code?

```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };

}
```

`Answer: `

```
import Buffer "mo:base/Buffer";

actor {
  var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];
  var buffer = Buffer.fromVarArray(languages);

  public func add_language(new_language: Text) : async [Text] {
    buffer.add(new_language);
    return buffer.toArray();
  };

}
```
