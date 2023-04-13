import 'dart:io';

List<Map<String, dynamic>> quiz() {
  var question1 = "What is Justin's middle name?";
  var question2 = "What are the three types of Haki?";
  var question3 = "How many ts are in the company name Automattic?";

  var quesetionOneChoiceA = "Tanner";
  var answerTextQuestionOneOptionB = "Ryan";
  var answerTextQuestionOneOptionC = "Lee";

  List<Map<String, dynamic>> quiz = [
  {
    'question': question1,
    'answers': [
      {'text':'A: $quesetionOneChoiceA', 'correct': false},
      {'text':'B: $answerTextQuestionOneOptionB', 'correct': true},
      {'text': 'C: $answerTextQuestionOneOptionC', 'correct': false},
      {'text': 'D: George', 'correct': false},
    ],
  },
  {
    'question': question2,
    'answers': [
      {'text': 'A: Observation, Conquerors, Air', 'correct': false},
      {'text': 'B: Armanent, Observation, Conquerors', 'correct': true},
      {'text': 'C: King, Food, Water', 'correct': false},
      {'text': 'D: Skin, Blood, Devil Fruit', 'correct': false},
    ],
  },
  {
    'question': question3,
    'answers': [
      {'text': 'A: 2', 'correct': false},
      {'text': 'B: 5', 'correct': false},
      {'text': 'C: 3', 'correct': true},
      {'text': 'D: 4', 'corrext': false},
    ],
  },
];


  return quiz;
}

void takeQuiz(List<Map<String, dynamic>> quiz) {
    int score = 0;

    for (var question in quiz) {
      print(question['question']);
      for (var i = 0; i < question['answers'].length; i++) {
       print('${i + 1}: ${question['answers'][i]['text']}');
    }
     String input = stdin.readLineSync()!;
      int answerIndex = int.parse(input) - 1;
     if (question['answers'][answerIndex]['correct']) {
        print('Correct!');
        score++;
    } else {
        print('Incorrect!');
    }
  }
}

void main(List<String> arguments) {
    var questions = quiz();

    takeQuiz(questions);
}
