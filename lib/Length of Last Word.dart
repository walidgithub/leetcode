void main(List<String> arguments) {
  var solution = Solution();
  // print('result is ${solution.lengthOfLastWord("Hello World")}'); //5
  // print('result is ${solution.lengthOfLastWord("   fly me   to   the moon  ")}'); //4
  // print('result is ${solution.lengthOfLastWord("luffy is still joyboy")}'); //6
  // print('result is ${solution.lengthOfLastWord("a")}'); //1
  // print('result is ${solution.lengthOfLastWord(" a")}'); //1
  // print('result is ${solution.lengthOfLastWord("    day")}'); //3
}

class Solution {
  int lengthOfLastWord(String s) {
    String tempString = s.trim();

    if (tempString.length == 1) {
      return 1;
    }

    for (int i = tempString.length - 1; i > 0; i--) {
      if (tempString[i] == ' ') {
        return tempString.substring(i + 1, tempString.length).length;
      }
    }
    return tempString.length;
  }
}
