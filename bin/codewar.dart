import 'package:codewar/romanToInteger.dart' as codewar;

void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.romanToInt('MCMXCIV')}');
}

class Solution {
  int romanToInt(String s) {
    int total = 0;
    List letterSplit = s.split('');
    List letterValue = [];

    for (int i = 0; i < letterSplit.length; i++) {
      if (letterSplit[i].toString() == 'I') {
        letterValue.add(1);
      } else if (letterSplit[i].toString() == 'V') {
        letterValue.add(5);
      } else if (letterSplit[i].toString() == 'X') {
        letterValue.add(10);
      } else if (letterSplit[i].toString() == 'L') {
        letterValue.add(50);
      } else if (letterSplit[i].toString() == 'C') {
        letterValue.add(100);
      } else if (letterSplit[i].toString() == 'D') {
        letterValue.add(500);
      } else if (letterSplit[i].toString() == 'M') {
        letterValue.add(1000);
      }
    }


    int preTotal = 0;
    for (int j = 0; j <= letterValue.length - 1; j++) {
      if (j == letterValue.length - 1) {
        preTotal = letterValue[j];
        total = total + preTotal;
      } else {
        if (letterValue[j] >= letterValue[(j + 1)]) {
          preTotal = letterValue[j];
          total = total + preTotal;
        } else {
          preTotal = letterValue[(j + 1)] - letterValue[j];
          total = total + preTotal;

          if (j != letterValue.length - 1) {
            j++;
          }
        }
      }
    }

    return total;
  }


}
