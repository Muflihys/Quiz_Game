import 'package:app_testing/components/quiz_card.dart';
import 'package:app_testing/components/quiz_controller.dart';
import 'package:app_testing/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizImage extends StatelessWidget {
  const QuizImage({super.key});

  @override
  Widget build(BuildContext context) {
    QuizControllerImage quizController = Get.put(QuizControllerImage());
    QuizControllerImage controller = Get.put(QuizControllerImage());
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text.rich(
                      TextSpan(
                        text: 'Quiz ${quizController.quizNum.value}',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: bold),
                        children: [
                          TextSpan(
                            text: '/${quizController.quiz.length}',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18, fontWeight: bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: quizController.nextQuiz,
                    child: Text(
                      'Next Quiz',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: orangeColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: quizController.pageController,
                onPageChanged: quizController.updateQuiz,
                itemCount: quizController.quiz.length,
                itemBuilder: (context, index) =>
                    QuizCard(quiz: quizController.quiz[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
