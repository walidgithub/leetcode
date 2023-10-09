void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.runningSum([3, 1, 2, 10, 1])}');
}

class Solution {
  List runningSum(List nums) {
    List result = [];
    int lastResult = 0;
    for(int i=0; i < nums.length; i++){
      lastResult = nums[i] + lastResult;

      result.add(lastResult);
    }
    return result;
  }
}
