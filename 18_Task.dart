class bankAccount{
  String accountNumber;
  String accountHolder;
  double balance;

  bankAccount(this.accountNumber,this.accountHolder,[this.balance=0]);

  void Deposit(double amount){
    if(balance > 0){
      balance += amount;
      print('Depoited ₹$amount. Current balance $balance');
    }else{
      print('Deposit amount must be greater than zeero');
    }
  }

  void Withdraw(double amount){
    if(amount <= 0){
      print('Amount must be greater than zero');
    }else if(amount > balance){
      print('Insufficient Balance');
    }else{
      balance -= amount;
      print('Withdrew ₹$amount. Remaining balance $balance');
    }
  }

  void checkBalance(){
    print('Current Balance $balance');
  }
}

void main() {
  bankAccount myAccount = bankAccount("1234567890", "Om", 1000);

  myAccount.checkBalance();
  myAccount.Deposit(500);
  myAccount.Withdraw(200);
  myAccount.Withdraw(2000); // Should not allow
  myAccount.checkBalance();
}