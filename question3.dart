// BankAccount Class
class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  // Constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  // Deposit method
  void deposit(double amount) {
    balance += amount;
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  // Get balance
  double getBalance() {
    return balance;
  }

  // Display account info
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

// Main Function
void main() {
  // Create 3 bank accounts
  BankAccount acc1 = BankAccount("12345", "Alice", "Savings");
  BankAccount acc2 = BankAccount("67890", "Bob", "Checking");
  BankAccount acc3 = BankAccount("11223", "Charlie", "Savings");

  // Deposit money
  acc1.deposit(1500.0);
  acc2.deposit(1000.0);
  acc3.deposit(500.0);

  // Withdraw money
  acc1.withdraw(0);       // No withdrawal
  acc2.withdraw(200.0);   // Valid withdrawal
  acc3.withdraw(1000.0);  // Insufficient funds

  // Display account information
  acc1.displayAccountInfo();
  acc2.displayAccountInfo();
}
