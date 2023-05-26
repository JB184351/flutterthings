import 'bank client.dart';
void main(List<String> arguments) {

    var justin = BankClient("Justin");
    var craig = BankClient("Craig");

    justin.addToBalance(20);
    craig.addToBalance(1000);

    justin.subtractIfPossible(10);
    craig.subtractIfPossible(100);

    print(justin.getBalance());
    print(craig.getBalance());

    justin.subtractIfPossible(20);
    print(justin.getBalance());

    List<BankClient> clients = [justin, craig];

    BankClient.printClients(clients);
}
