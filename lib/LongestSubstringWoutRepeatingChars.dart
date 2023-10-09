import 'dart:math';

void main(List<String> arguments) {
  var solution = Solution();

  print(solution.lengthOfLongestSubstring("abcabcbb"));
// "bwf" 3
// "ckilbkd"  5
// "anviaj"  5
// "dvdf" 3
// "vbxpvwkkteaiob"  7
// "pwwkew" 3
// "abcabcbb" 3
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String check = '';
    Set last = {};
    String out = '';

    if (s.length == 0) {
      return 0;
    }

    for (int i = 0; i < s.length - 1; i++) {
      for (int x = 0; x < s.length - i; x++) {
        int g = last.length;
        if (s[x + i] != s[x + i + 1]) {
          if (last.isEmpty) {
            last.add(s[x + i]);
            last.add(s[x + i + 1]);
          } else {
            last.add(s[x + i + 1]);
          }
        }

        int g2 = last.length;
        if (g2 == g) {
          if (last.length > check.length) {
            check = last.join();
          }
          last = {};
          break;
        }

        if (x + i + 1 == s.length - 1) {
          if (last.length > check.length) {
            check = last.join();
          }
          last = {};
          out = 'Out';
          break;
        }
      }

      if (out == 'Out') {
        break;
      }
    }

    if (check.length == 0) {
      return s[0].length;
    }
    return check.length;
  }
}
