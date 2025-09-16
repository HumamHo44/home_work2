/*
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance
*/

void main() {
  BankAccount bankAccount = BankAccount();
  bankAccount.balance = 200;
  print(bankAccount.balance);
  bankAccount.balance = -50;
  print("${bankAccount.balance}");
}

class BankAccount {
  var _balance = 0;

  set balance(int value) {
    if (value < 0) {
      print('Invalid balance if attempted');
    } else {
      _balance = value;
    }
  }

  int get balance => _balance;
}
