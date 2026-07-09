import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Vocabulary"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          const SizedBox(height: 10),

          const Text(
            "Choose a Topic",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          topicCard(Icons.language, "Daily English"),
          topicCard(Icons.flight, "Travel"),
          topicCard(Icons.business, "Business"),
          topicCard(Icons.school, "IELTS"),
          topicCard(Icons.computer, "Technology"),
          topicCard(Icons.shuffle, "Random"),

        ],
      ),
    );
  }

  Widget topicCard(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon, size: 30),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
