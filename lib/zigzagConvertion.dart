void main(List<String> arguments) {
  var solution = Solution();
  print(solution.convert("abcdef", 4));
}

class Solution {
  String convert(String s, int numRows) {
    String result = '';
    final digitBuckets = List.generate(numRows, (_) => <String>[]);

    int loops = 0;
    if (s.length < numRows) {
      loops = (numRows / s.length).round();
    } else {
      loops = (s.length / numRows).round();
    }

    int intenal = 0;
    for (int j = 0; j < loops; j++) {
      for (int i = 0; i < numRows; i++) {
        if (intenal == s.length) {
          break;
        }
        digitBuckets[i].add(s[intenal]);
        intenal++;

        if (s.length == intenal) {
          for (int k = 0; k < numRows; k++) {
            result = result + digitBuckets[k].join();
          }
          return result;
        }
      }

      if (s.length == 2 && numRows > 1) {
        digitBuckets[0].add(s[intenal]);
        intenal++;
      } else {
        if (numRows > 1) {
          for (int x = numRows - 2; x > 0; x--) {
            if (intenal == s.length) {
              break;
            }
            digitBuckets[x].add(s[intenal]);
            intenal++;
          }
        }
      }
    }
    for (int k = 0; k < numRows; k++) {
      result = result + digitBuckets[k].join();
    }
    return result;
  }
}