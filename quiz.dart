import 'dart:io';

class QuizQuestion {
  String question;
  String answer;

  QuizQuestion(this.question, this.answer);

  bool checkAnswer(String userAnswer) {
    return userAnswer.trim().toLowerCase() == answer.trim().toLowerCase();
  }
}

void main() {
  List<QuizQuestion> quiz = [
    QuizQuestion("What is the data type of 10 in Dart?", "int"),
    QuizQuestion("Which keyword is used to define a function in Dart?", "void"),
    QuizQuestion("What symbol is used to end a statement in Dart?", ";"),
    QuizQuestion(
      "Which loop is used when the number of iterations is known?",
      "for",
    ),
    QuizQuestion("What keyword is used to create a class in Dart?", "class"),
  ];

  int score = 0;

  print("----- Programming Quiz -----\n");

  for (int i = 0; i < quiz.length; i++) {
    print("Q${i + 1}: ${quiz[i].question}");

    stdout.write("Your Answer: ");
    String userAnswer = stdin.readLineSync()!;

    if (quiz[i].checkAnswer(userAnswer)) {
      print("Correct!\n");
      score++;
    } else {
      print("Wrong! Correct answer is: ${quiz[i].answer}\n");
    }
  }

  print("----- Quiz Completed -----");
  print("Your Score: $score / ${quiz.length}");
}
