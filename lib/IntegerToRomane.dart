void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.intToRoman(58)}');
}

class Solution {
  String intToRoman(int num) {

    String result = '';
    List letterSplit = num.toString().split('');
    List chars = [];

    int countOfDigits = letterSplit.length;
    int index = 0;

    if (countOfDigits == 4) {
      if (int.parse(letterSplit[index]) >= 1 && int.parse(letterSplit[index]) <= 3) {
        int num = int.parse(letterSplit[index]);
        while (num >= 1 && num <= 3) {
          chars.add('M');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 1) {
        chars.add('M');
      }
      countOfDigits--;
      index++;
    }

    if (countOfDigits == 3) {
      if (int.parse(letterSplit[index]) >= 1 &&
          int.parse(letterSplit[index]) <= 3) {
        int num = int.parse(letterSplit[index]);
        while (num >= 1 && num <= 3) {
          chars.add('C');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 4) {
        chars.addAll(['C', 'D']);
      } else if (int.parse(letterSplit[index]) == 5) {
        chars.add('D');
      } else if (int.parse(letterSplit[index]) >= 6 &&
          int.parse(letterSplit[index]) <= 8) {
        chars.add('D');
        int num = int.parse(letterSplit[index]);
        while (num >= 6 && num <= 8) {
          chars.add('C');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 9) {
        chars.addAll(['C', 'M']);
      }
      countOfDigits--;
      index++;
    }

    if (countOfDigits == 2) {
      if (int.parse(letterSplit[index]) >= 1 &&
          int.parse(letterSplit[index]) <= 3) {
        int num = int.parse(letterSplit[index]);
        while (num >= 1 && num <= 3) {
          chars.add('X');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 4) {
        chars.addAll(['X', 'L']);
      } else if (int.parse(letterSplit[index]) == 5) {
        chars.add('L');
      } else if (int.parse(letterSplit[index]) >= 6 &&
          int.parse(letterSplit[index]) <= 8) {
        chars.add('L');
        int num = int.parse(letterSplit[index]);
        while (num >= 6 && num <= 8) {
          chars.add('X');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 9) {
        chars.addAll(['X', 'C']);
      }
      countOfDigits--;
      index++;
    }

    if (countOfDigits == 1) {
      if (int.parse(letterSplit[index]) >= 1 &&
          int.parse(letterSplit[index]) <= 3) {
        int num = int.parse(letterSplit[index]);
        while (num >= 1 && num <= 3) {
          chars.add('I');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 4) {
        chars.addAll(['I', 'V']);
      } else if (int.parse(letterSplit[index]) == 5) {
        chars.add('V');
      } else if (int.parse(letterSplit[index]) >= 6 &&
          int.parse(letterSplit[index]) <= 8) {
        chars.add('V');
        int num = int.parse(letterSplit[index]);
        while (num >= 6 && num <= 8) {
          chars.add('I');
          num--;
        }
      } else if (int.parse(letterSplit[index]) == 9) {
        chars.addAll(['I', 'X']);
      }
    }

    result = chars.join();
    print(chars);

    return result;
  }
}
