void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.numberOfSteps(123)}');
}

class Solution {
  int numberOfSteps(int num) {
    int totalEven = 0;
    int remained = num;

    while (remained != 0) {
      if (remained.isEven) {
        remained = (remained / 2).floor();
      } else {
        remained = remained - 1;
      }
      totalEven++;
    }

    return totalEven;
  }
}
