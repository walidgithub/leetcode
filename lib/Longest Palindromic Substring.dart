void main(List<String> arguments) {
  var solution = Solution();
  // print(solution.longestPalindrome("abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"
  print(solution.longestPalindrome(
      "abba"
  ));
}

class Solution {
  String longestPalindrome(String s) {
    List listPalindrome = s.split('');
    List temp = [];
    String tempResult = '';
    String prevResult = '';


    if (s.length == 1) {
      return s;
    }

    for (int x = 0; x < listPalindrome.length - 1; x++) {
      for (int i = x; i < listPalindrome.length - 1; i++) {
        if (x == 0) {
          if (listPalindrome[i] == listPalindrome[i + 1]) {
            temp.add(listPalindrome[i]);
            temp.add(listPalindrome[i + 1]);
          } else {
            temp.add(listPalindrome[i]);
          }
          tempResult = temp.join();
          if (tempResult.length > prevResult.length) {
            prevResult = tempResult;
            temp = [];
          } else {
            temp = [];
          }
        }

        if (x == 1) {
          for (int j = 0; j <= x; j++) {
            if (listPalindrome[i - 1] == listPalindrome[i + 1]) {
              temp.add(listPalindrome[i - 1]);
              temp.add(listPalindrome[i]);
              temp.add(listPalindrome[i + 1]);
              tempResult = temp.join();
              if (tempResult.length > prevResult.length) {
                prevResult = tempResult;
                temp = [];
              } else {
                temp = [];
              }
            }
          }
        }

        if (x >= 2) {
          int y = x + 1;
          int changeable = i - x;

          for (int j = 0; j <= x - 1; j++) {
            if (listPalindrome[j + changeable] ==
                listPalindrome[y + changeable]) {
              if (temp.isEmpty) {
                temp.add(listPalindrome[j + changeable]);
                temp.add(listPalindrome[y + changeable]);
              } else {
                if (j + changeable == y + changeable) {
                  temp.insertAll(j, [listPalindrome[j + changeable]]);
                } else if (j + changeable < y + changeable) {
                  temp.insertAll(j, [
                    listPalindrome[j + changeable],
                    listPalindrome[y + changeable]
                  ]);
                }
              }
              y--;
            } else {
              y--;
              temp = [];
              break;
            }
          }

          if (temp.isNotEmpty) {
            tempResult = temp.join();
            if (tempResult.length > prevResult.length) {
              prevResult = tempResult;
              temp = [];
            } else {
              temp = [];
            }
          }
        }
      }
    }

    return prevResult;
  }
}
