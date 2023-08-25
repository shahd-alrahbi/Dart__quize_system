import 'dart:io';

void main() {
  Map qusetin1 = {"q": "1+1", "answer": "2", "mark": 2};
  Map qusetin2 = {"q": "1*10", "answer": "10", "mark": 2};
  Map qusetin3 = {"q": "40/2", "answer": "20", "mark": 2};

  double score = 0;
  List<Map> Questins = [qusetin1, qusetin2, qusetin3];
  for (var question in Questins) {
    print(question["q"]);
    print("//---------------------------------");
    String? answer = stdin.readLineSync() ?? "0";

    if (answer == question["answer"]) {
      print("Correct Answer");
      score = score + question["mark"];
    } else {
      print("Incorrect");
    }
    print("//---------------------------------");
  }
  print(score);
}
