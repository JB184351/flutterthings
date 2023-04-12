import 'dart:io';
//Program asks user for their name and then prints out a message with it
// If no name is provided then we just insert you where the user name would
// be

void main(List<String> arguments) {

  var askForUserName = "What is your name?";
  print(askForUserName);

  String? name = stdin.readLineSync();

  if (name == "") {
    name = "you";
  }

  var welcomeUserMessage = "One for $name, one for me.";

  print(welcomeUserMessage);
}
