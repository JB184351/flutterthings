void nullSafety(String? colaescingOperatorTestString) {
    print(colaescingOperatorTestString ?? "The string would've been nil");
}


void main(List<String> arguments) {

    // Basic Null Safety
    int? theOne = null;
    String? thisIsTheWay = "This is the way";
    String? nullString = null;

    // Null Coalescing Operator ??
    nullSafety(nullString);
    nullSafety(thisIsTheWay);

    // Late variables can't be accessed before being initialized
    late String name;

    name = "Alex";

    print(name);


}
