void main(List<String> arguments) {
  var solution = Solution();
  print(solution.uniqueMorseRepresentations(["gin","zen","gig","msg"]));
}

class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    var transformationsCount = <String>{};

    for (int i = 0; i <= words.length - 1; i++) {
      transformationsCount.add(convertCode(words[i]));
    }

    return transformationsCount.length;
  }

  String convertCode(String word) {
    List morseCode = [
      ".-",
      "-...",
      "-.-.",
      "-..",
      ".",
      "..-.",
      "--.",
      "....",
      "..",
      ".---",
      "-.-",
      ".-..",
      "--",
      "-.",
      "---",
      ".--.",
      "--.-",
      ".-.",
      "...",
      "-",
      "..-",
      "...-",
      ".--",
      "-..-",
      "-.--",
      "--.."
    ];

    List alphabetLetters = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];

    String convertedWord = '';
    // [g,  i,  n]
    List toConvert = word.split('');

    for (int a = 0; a <= toConvert.length - 1; a++) {
      for (int b = 0; b <= alphabetLetters.length - 1; b++) {
        if (toConvert[a] == alphabetLetters[b]) {
          convertedWord = convertedWord + morseCode[b];
        }
      }
    }

    print(convertedWord);

    return convertedWord;
  }
}
