import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {

  final String word;

  const FlashCard({
    super.key,
    required this.word,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 5,

      child: SizedBox(

        width: 300,
        height: 200,

        child: Center(

          child: Text(

            word,

            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

      ),

    );
  }
}
