# Structs

Structs group related variables under one custom type.

## Defining and Using a Struct

```solidity
struct Vote {
    Choices choice;
    address voter;
}

Vote public myVote = Vote({ choice: Choices.Yes, voter: msg.sender });
```

Access fields with dot notation: `myVote.voter`, `myVote.choice`.

## Struct Arrays

```solidity
Vote[] public votes;
votes.push(Vote(Choices.Yes, msg.sender));
```

## Storage Reference vs Memory Copy

```solidity
// Storage reference — modifies the original
Vote storage v = votes[i];
v.choice = Choices.No;  // this changes votes[i] directly

// Memory copy — does NOT modify the original
Vote memory v = votes[i];
v.choice = Choices.No;  // changes only the local copy
```

Use a `storage` reference when you want to update an element in place.
