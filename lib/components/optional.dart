import 'package:app_testing/components/quiz_controller.dart';
import 'package:app_testing/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Optional extends StatelessWidget {
  const Optional({
    super.key,
    required this.optionText,
    required this.index,
    required this.press,
  });

  final String optionText;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizControllerImage>(
      init: QuizControllerImage(),
      builder: (qnController) {
        Color getRightColor() {
          if (qnController.answered) {
            if (index == qnController.checkAns) {
              return Colors.white;
            } else if (index == qnController.selectAns &&
                qnController.selectAns != qnController.checkAns) {
              return pinkColor;
            }
          }
          return orangeColor;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(color: getRightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center, // Sesuaikan dengan kebutuhan Anda
            child: Text(
              optionText,
              style: TextStyle(
                fontSize: 16,
                color: getRightColor(),
              ),
            ),
          ),
        );
      },
    );
  }
}
