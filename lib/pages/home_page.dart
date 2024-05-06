import 'package:app_testing/components/quiz_page.dart';
import 'package:app_testing/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Selamat datang di game Tebak Gambar',
                style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => QuizImage());
              },
              color: orangeColor,
              child: const Text('Mulai'),
            ),
          ]),
    );
  }
}
