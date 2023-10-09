void main(List<String> arguments) {
  var solution = Solution();
  print(solution.longestCommonPrefix(["abab","aba","abc"]));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.length < 1 || strs.length >= 200){
      return '';
    }

    String prevSt, temp = '';
    bool check = false;

    strs.sort((a, b) => a.length.compareTo(b.length));

    if (strs[0].length >= 200 || strs[0].length == 0){
      return '';
    }

    if (strs.length == 1){
      return strs[0];
    }

    // loop for the smallest word characters
    for (int j = 0; j <= strs[0].length - 1; j++) {
      prevSt = strs[0][j];
      // loop for words
      for (int x = 0; x <= strs.length - 1; x++) {
        if (strs[x][j] == prevSt) {
          check = true;
        } else {
          check = false;
          break;
        }

        print(strs[x][j]);
      }

      if (check) {
        temp = temp + prevSt;
      } else {
        if (temp.length > 0) {
          return temp;
        } else {
          return '';
        }
      }
    }
    return temp;
  }
}
