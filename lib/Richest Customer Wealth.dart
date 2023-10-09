import 'dart:math';

void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.maximumWealth([
        [7, 1, 3],
        [1, 9, 5],
        [2, 8, 7]
      ])}');
  // print('result is ${solution.maximumWealth([
  //       [1, 2, 3],
  //       [3, 2, 1]
  //     ])}');

  // print('result is ${solution.maximumWealth([
  //       [1, 5],
  //       [7, 3],
  //       [3, 5]
  //     ])}');
}

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int result = 0;
    int maxResult = 0;
    for (int i = 0; i < accounts.length; i++) {
      result = 0;
      for (int j = 0; j < accounts[i].length; j++) {
        result += accounts[i][j];
      }
      maxResult = max(maxResult, result);
    }
    return maxResult;
  }
}
