class ModelQuestion{
  const ModelQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffelAnswer() {
    final shuffeledList = List.of(answer);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}