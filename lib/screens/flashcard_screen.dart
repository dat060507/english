import 'package:flutter/material.dart';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {

  final List<Map<String, String>> words = [

    {
      "word":"abandon",
      "meaning":"từ bỏ",
      "ipa":"/əˈbændən/",
      "example":"She abandoned her dream."
    },

    {
      "word":"achievement",
      "meaning":"thành tựu",
      "ipa":"/əˈtʃiːvmənt/",
      "example":"Winning the prize was a great achievement."
    },

    {
      "word":"challenge",
      "meaning":"thử thách",
      "ipa":"/ˈtʃælɪndʒ/",
      "example":"Learning English is a challenge."
    },

    {
      "word":"benefit",
      "meaning":"lợi ích",
      "ipa":"/ˈbenɪfɪt/",
      "example":"Exercise has many benefits."
    }

  ];

  int index = 0;

  bool showMeaning = false;

  @override
  Widget build(BuildContext context) {

    final word = words[index];

    return Scaffold(

      appBar: AppBar(
        title: const Text("Flashcard"),
        centerTitle: true,
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            LinearProgressIndicator(
              value: (index + 1) / words.length,
            ),

            const SizedBox(height: 30),

            GestureDetector(

              onTap: (){

                setState(() {

                  showMeaning = !showMeaning;

                });

              },

              child: Card(

                elevation: 5,

                child: SizedBox(

                  width: double.infinity,

                  height: 280,

                  child: Center(

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Text(

                          word["word"]!,

                          style: const TextStyle(

                            fontSize: 35,

                            fontWeight: FontWeight.bold,

                          ),

                        ),

                        const SizedBox(height:20),

                        if(showMeaning)...[

                          Text(

                            word["meaning"]!,

                            style: const TextStyle(fontSize:26),

                          ),

                          const SizedBox(height:10),

                          Text(word["ipa"]!),

                          const SizedBox(height:10),

                          Padding(

                            padding: const EdgeInsets.symmetric(horizontal:20),

                            child: Text(

                              word["example"]!,

                              textAlign: TextAlign.center,

                            ),

                          ),

                        ]

                      ],

                    ),

                  ),

                ),

              ),

            ),

            const Spacer(),

            Row(

              children: [

                Expanded(

                  child: ElevatedButton(

                    onPressed: index>0?(){

                      setState(() {

                        index--;

                        showMeaning=false;

                      });

                    }:null,

                    child: const Text("Previous"),

                  ),

                ),

                const SizedBox(width:20),

                Expanded(

                  child: ElevatedButton(

                    onPressed: index<words.length-1?(){

                      setState(() {

                        index++;

                        showMeaning=false;

                      });

                    }:null,

                    child: const Text("Next"),

                  ),

                )

              ],

            )

          ],

        ),

      ),

    );

  }

}
