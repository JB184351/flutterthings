import 'dart:math';

void generateUniqueNumbers() {
    var randomNumSet = <int>{};
    var rng = Random();

    for(var i = 0; i < 10; i++) {
        var randomNum = rng.nextInt(100000);

        randomNumSet.add(randomNum);
    }

    print(randomNumSet);
}

void main(List<String> arguments) {
    generateUniqueNumbers();
}
