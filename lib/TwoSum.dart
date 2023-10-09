void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.twoSum([2,7,11,15], 9)}');
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];

    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (i != j) {
          if (nums[i] + nums[j] == target) {
            result.addAll([i, j]);
            return result;
          }
        }
      }
    }
    return result;
  }
}
