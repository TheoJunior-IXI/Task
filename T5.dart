class BankAccount {
  //data members
  double _balance;
  // constructor
  BankAccount(this._balance);
  // deposit method
  void deposit(double amount) {
    _balance += amount;
  }
  // withdraw method
  void withdraw(double amount) {

    if (amount < _balance && amount<= 0) {
      throw NegativeBalanceException('Amount must be Positive.');
    }
    if (amount > _balance) {
      throw NoEnoughMoneyException('No enough money.');
    }
    _balance -= amount;
  }
  // display method
  void DisplayBalance() {
    print("Balance is : $_balance");
  }
}
  // Error  message
class NoEnoughMoneyException implements Exception {
  final String message1;
  NoEnoughMoneyException(this.message1);
}

class NegativeBalanceException implements Exception {
  final String message2;
  NegativeBalanceException(this.message2);
}

void main() {
  BankAccount myAccount = BankAccount(3000);
  myAccount.DisplayBalance();
  myAccount.deposit(700);
  myAccount.DisplayBalance();
  try {
    myAccount.withdraw(6000);
    myAccount.DisplayBalance();

  } on NoEnoughMoneyException catch (e) {
    print(e.message1);
    myAccount.DisplayBalance();
  }
  try {
    myAccount.withdraw(-600);
    myAccount.DisplayBalance();

  } on NegativeBalanceException catch (e) {
    print(e.message2);
    myAccount.DisplayBalance();
  }
  myAccount.withdraw(2000);
  myAccount.DisplayBalance();
}