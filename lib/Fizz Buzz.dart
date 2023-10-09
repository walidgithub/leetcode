void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.fizzBuzz(15)}');
}

class Solution {
  List<String> fizzBuzz(int n) {
    List<String> result = [];

    for (int i = 0; i < n; i++) {
      if ((i + 1) % 5 == 0 && (i + 1) % 3 == 0) {
        result.add("FizzBuzz");
      } else if ((i + 1) % 5 == 0) {
        result.add("Buzz");
      } else if ((i + 1) % 3 == 0) {
        result.add("Fizz");
      } else {
        result.add("${i + 1}");
      }
    }
    return result;
  }
}
