function balanceOf(address account) public view returns (uint256) {
        uint256 balance = balances[account];
        // Add pending transactions (both incoming and outgoing)
        balance += pendingIncoming[account];
        balance -= pendingOutgoing[account];
        return balance;
    } 