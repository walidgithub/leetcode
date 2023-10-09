void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.searchInsert([1, 3, 5, 6], 5)}'); //2
  // print('result is ${solution.searchInsert([1, 3, 5, 6], 2)}'); //1
  // print('result is ${solution.searchInsert([1, 3, 5, 6], 7)}'); //4
  // print('result is ${solution.searchInsert([1, 3, 5, 6], 0)}'); //0
  // print('result is ${solution.searchInsert([-1,3,5,6], 0)}'); //1
  // print('result is ${solution.searchInsert([1], 0)}'); //0
  // print('result is ${solution.searchInsert([1, 3, 4, 5, 6], 3)}'); //1
  // print('result is ${solution.searchInsert([1, 3, 5], 1)}'); //0
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    int result = 0;

    if (target < nums[0]) {
      return 0;
    }

    result = getMiddle(nums, target);

    if (result < 0) {
      nums.insert(0, target);
      nums.sort();
      result = getMiddle(nums, target);
      return result;
    } else {
      return result;
    }
  }

  int getMiddle(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;
    int middle = ((start + end) / 2).floor();

    while (nums[middle] != target && start <= end) {
      if (target < nums[middle]) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
      middle = ((start + end) / 2).floor();
    }
    if (nums[middle] == target) {
      return middle;
    }

    return -1;
  }
}
