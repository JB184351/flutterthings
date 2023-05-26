import 'dart:math';

class BankClient {
    static int _nextId = 1;

    final int _id;
    final String _name;
    int _balance = 0;

    BankClient(this._name) : _id = _nextId++;

    static void printClients(List<BankClient> clients) {
        for (var client in clients) {
            print("Client id: ${client._id} and their balance ${client._balance}");
        }
    }

    int getBalance() => _balance;

    int addToBalance(int money) {
      _balance += money;
      return _balance;
    }

    int subtractIfPossible(int spent) {
      int newBalance = _balance - spent;

      if (newBalance > 0) {
        _balance = newBalance;
      } else {
        return _balance;
      }

      return _balance;
    }
}