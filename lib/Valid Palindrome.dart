void main(List<String> arguments) {
  var solution = Solution();
  // remove all spaces and non-alphanumeric characters and convert into lowercase
  // print('result is ${solution.isPalindrome("A man, a plan, a canal: Panama")}'); // true
  // print('result is ${solution.isPalindrome("race a car")}'); // false
  // print('result is ${solution.isPalindrome(" ")}'); // true
  // print('result is ${solution.isPalindrome("ab@a")}'); // true
  // print('result is ${solution.isPalindrome("a.")}'); // true
  // print('result is ${solution.isPalindrome("ab")}'); // false
  // print('result is ${solution.isPalindrome("......a.....")}'); // true
  // print('result is ${solution.isPalindrome("Marge, let's [went]. I await {news} telegram.")}'); // true
  // print('result is ${solution.isPalindrome("Marge, let's \"[went].\" I await {news} telegram.")}'); // true
  print('result is ${solution.isPalindrome("A man, a plan, a canal -- Panama")}'); // true
}

class Solution {
  bool isPalindrome(String s) {
    if (s.length == 1) {
      return true;
    }

    String newSentence = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), "").toLowerCase();

    List split = newSentence.split('');


    String last = split.join('');

    bool checkValue = true;
    int u = last.length - 1;
    for (int i = 0; i <= last.length - 1; i++) {
      if (last[i] == last[u]) {
        checkValue = true;
      } else {
        checkValue = false;
        break;
      }
      u--;
    }

    return checkValue;
  }
}
