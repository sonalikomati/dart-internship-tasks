class BankAccount {
  String name;
  int accountNumber;
  double balance;

  BankAccount(this.name, this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Successfully Withdrawn: $amount");
      print("Remaining balance: $balance");
    } else {
      print("Insufficient balance! Can't withdraw amount: $amount");
    }
  }

  void displayBalance() {
    print("===============================");
    print("Name: $name");
    print("Account Number: $accountNumber");
    print("Balance: $balance");
  }
}

void main() {
  BankAccount acc1 = BankAccount("Sanju", 101010101010, 5000);
  acc1.displayBalance();
  acc1.deposit(1000);
  acc1.withdraw(2000);

  BankAccount acc2 = BankAccount("Sonali", 202020202020, 1000);
  acc2.displayBalance();
  acc2.withdraw(2000);
}
