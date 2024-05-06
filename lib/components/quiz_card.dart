import 'package:app_testing/components/optional.dart';
import 'package:app_testing/components/quiz.dart';
import 'package:app_testing/components/quiz_controller.dart';
import 'package:app_testing/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    super.key,
    required this.quiz,
  });

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    QuizControllerImage controller = Get.put(QuizControllerImage());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              quiz.quiz,
              height: 300,
              width: 300,
            ),
            Text(
              quiz.ask,
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: bold),
            ),
            const SizedBox(
              height: 10,
            ),
            ...List.generate(quiz.optional.length, (index) {
              return SizedBox(
                height: 80,
                child: Optional(
                  index: index,
                  optionText: quiz.optional[index],
                  press: () => controller.correctAns(quiz, index, context),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
