import 'package:app_testing/components/quiz.dart';
import 'package:app_testing/components/quiz_score.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizControllerImage extends GetxController {
  late List<Quiz> _quiz;

  QuizControllerImage() {
    List<Map<String, dynamic>> shuffledQuiz = List.from(quiz_exam);
    shuffledQuiz.shuffle(); // Mengacak urutan soal

    _quiz = shuffledQuiz
        .map(
          (quiz) => Quiz(
            id: quiz['id'],
            quiz: quiz['quiz'],
            ask: quiz['ask'],
            optional: quiz['optional'],
            answer: quiz['answer'],
          ),
        )
        .toList();
  }

  List<Quiz> get quiz => _quiz;

  late int _selectAns;
  int get selectAns => _selectAns;

  late int _checkAns;
  int get checkAns => _checkAns;

  bool _answered = false;
  bool get answered => _answered;

  late PageController _quizPage;
  PageController get pageController => _quizPage;

  final RxInt _quizNum = 1.obs;
  RxInt get quizNum => _quizNum;

  int _numCheckAns = 0;
  int get numcheckAns => _numCheckAns;

  @override
  void onInit() {
    _quizPage = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _quizPage.dispose();
  }

  void correctAns(Quiz quiz, int selectedIndex, BuildContext context) {
    _answered = true;
    _checkAns = quiz.answer;
    _selectAns = selectedIndex;

    if (_checkAns == _selectAns) {
      _numCheckAns++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 200),
          backgroundColor: Colors.green,
          content: Text("Correct!"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 200),
          backgroundColor: Colors.red,
          content: Text("Incorrect!"),
        ),
      );
    }
    update();

    Future.delayed(const Duration(seconds: 2), () {
      nextQuiz();
    });
  }

  void nextQuiz() {
    if (_quizNum.value != _quiz.length) {
      _answered = false;
      _quizPage.nextPage(
        duration: const Duration(microseconds: 250),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      Get.to(() => QuizScore());
    }
  }

  void updateQuiz(int index) {
    _quizNum.value = index + 1;
  }
}
