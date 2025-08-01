class Quizquestions {
  final String text;
  final List<String> answers;

  Quizquestions(this.text, this.answers);
  List<String> getshuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
