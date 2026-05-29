# Notes: Sending Ether

Contracts must be explicitly programmed to handle the transfer of native Ether.

## 1. `payable` Keyword
- Functions must be marked `payable` to receive Ether.
- The `msg.value` variable holds the amount of Wei sent.

## 2. Receiving Ether
- **`receive() external payable`**: Triggered when no data is sent with the transaction.
- **`fallback() external payable`**: Triggered when the function selector doesn't match any existing function.

## 3. Sending Methods (Comparison)
| Method | Gas Sent | Returns | Security |
| :--- | :--- | :--- | :--- |
| `transfer` | 2300 | Reverts | Fixed gas is now a risk. |
| `send` | 2300 | `bool` | Must check return value. |
| **`call`** | **All** | **`(bool, bytes)`** | **Recommended standard.** |

## 4. Reentrancy Protection
When using `call`, always follow the **Checks-Effects-Interactions** pattern or use a `ReentrancyGuard` to prevent attackers from calling your function repeatedly before the first call finishes.
