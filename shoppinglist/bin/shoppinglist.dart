import 'dart:io';

void shoppingList() {
    var shoppingList = <String>{};
    String? userInput = "";

    do {
      print("Add to your shopping list or type stop to finish");
      userInput = stdin.readLineSync();
      shoppingList.add(userInput!);

    } while (userInput != "stop");

    shoppingList.remove("stop");
    print(shoppingList);
}

void main(List<String> arguments) {
    shoppingList();
}
