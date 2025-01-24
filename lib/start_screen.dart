import 'package:flutter/material.dart';
import 'package:myapp/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0), // กำหนดระยะห่างจากขอบ
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.8,  // ปรับระดับความโปร่งใส
                  child: Image.asset(
                    'assets/images/quiz-logo.png',
                    width: 300,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 40), // เพิ่มระยะห่าง
                const Text(
                  'Learn Flutter the Fun Way!',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40), // เพิ่มระยะห่าง
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
