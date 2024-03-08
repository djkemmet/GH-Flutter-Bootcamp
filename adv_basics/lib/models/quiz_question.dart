class QuizQuestion {
  // Class Constructor with named parameters
  const QuizQuestion({required this.Question, required this.Answers});

  // Class Properties
  final String Question;
  final List<String> Answers;

  List<String> getShuffledAnswers (){

    final shuffledList =  List.of(Answers);
    shuffledList.shuffle();
    return shuffledList;
  }

}