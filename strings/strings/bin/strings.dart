

void main(List<String> arguments) {
    // In this section we will count the number of words in a string
    var text = "This is the way";
    var wordCount = text.split(" ").length;

    print(wordCount.toString());

    //Concantenating Strings in Dart
    var initialText = "This is the way ";

    var stringToConcantenate = "via the Mando.";

    var concatenatedString = initialText + stringToConcantenate;

    print(concatenatedString);    
}
