void main(List<String> arguments) {
  var solution = Solution();
  print(solution.isPalindrome(1525225251));
}

class Solution {
  bool isPalindrome(int x) {

    Palindrome intList = Palindrome(listPalindrome: x.toString().split(''));

    return intList.checkPalindrome();
  }
}

class Palindrome {
  List listPalindrome = [];

  Palindrome({required this.listPalindrome});

  bool checkPalindrome() {
    bool checkValue = true;
    int u = listPalindrome.length - 1;
    for (int i = 0; i <= listPalindrome.length - 1; i++) {
      if (listPalindrome[i] == listPalindrome[u]) {
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
