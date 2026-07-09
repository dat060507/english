import 'screens/learn_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const VocabAI());
}

class VocabAI extends StatelessWidget {
  const VocabAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VocabAI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildButton(
      IconData icon,
      String title,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton.icon(
          icon: Icon(icon),
          label: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text("📚 VocabAI"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            const SizedBox(height: 30),

            const Text(
              "Learn English Smarter",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

           buildButton(
  Icons.menu_book,
  "Learn",
  () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const LearnScreen(),
      ),
    );
  },
),

            buildButton(
              Icons.refresh,
              "Review",
                  () {},
            ),

            buildButton(
              Icons.sports_esports,
              "Games",
                  () {},
            ),

            buildButton(
              Icons.bar_chart,
              "Statistics",
                  () {},
            ),

            buildButton(
              Icons.settings,
              "Settings",
                  () {},
            ),

          ],
        ),
      ),
    );
  }
}
