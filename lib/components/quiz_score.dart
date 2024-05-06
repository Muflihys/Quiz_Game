import 'package:app_testing/components/quiz_controller.dart';
import 'package:app_testing/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScore extends StatelessWidget {
  const QuizScore({super.key});

  @override
  Widget build(BuildContext context) {
    QuizControllerImage qnController = Get.put(QuizControllerImage());
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Correct Result',
              style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            Text(
              '${qnController.numcheckAns}/${qnController.quiz.length}',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            const SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Get.offAllNamed('/');
              },
              child: Text(
                'back',
                style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
