class Word {

  final String word;

  final String meaning;

  final String ipa;

  final String example;

  Word({

    required this.word,

    required this.meaning,

    required this.ipa,

    required this.example,

  });

  factory Word.fromJson(Map<String, dynamic> json) {

    return Word(

      word: json["word"],

      meaning: json["meaning"],

      ipa: json["ipa"],

      example: json["example"],

    );

  }

}
