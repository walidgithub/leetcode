void main(List<String> arguments) {
  var solution = Solution();

  // print(solution.fourSum([1,0,-1,0,-2,2],0));
  // 0
  //[[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

  print(solution.fourSum([-4, -3, -2, -1, 0, 0, 1, 2, 3, 4], 0));

  /*
  [-4,-3,3,4],[-4,-2,2,4],[-4,-1,1,4],[-4,0,0,4],[-3,0,1,2],
  [-3,-2,2,3],[-3,-1,1,3],[-3,0,0,3],[-2,-1,1,2],[-2,0,0,2],
  [-2,-1,0,3],[-1,0,0,1]

  [-3,-2,1,4],[-3,-1,0,4],[-4,-1,2,3],[-4,0,1,3]
   */

  // print(solution.fourSum([-3,-2,-1,0,0,1,2,3], 0));
  // [-3,0,1,2],[-3,-2,2,3],[-3,-1,1,3],[-3,0,0,3],[-2,0,0,2],
  // [-1,0,0,1],[-2,-1,0,3],[-2,-1,1,2]

  // print(solution.fourSum([0, 0, 0, 0], 0)); // [[0, 0, 0, 0]]
  // print(solution.fourSum([-3, -1, 0, 2, 4, 5], 1)); // [[-3, -1, 0, 5]]
  // print(solution.fourSum([-3, -1, 0, 2, 4, 5], 0)); // [[-3, -1, 0, 4]]
  // print(solution.fourSum([2, 2, 2, 2, 2], 8)); // [[2, 2, 2, 2]]
}

class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    List<List<int>> result = [];
    List<int> tempResult = [];
    String found = '';

    if (nums.length < 4) {
      return result;
    }

    nums.sort();

    for (int x = 0; x < nums.length; x++) {
      for (int y = 0; y < nums.length; y++) {
        if (x != y){
          for (int z = 0; z < nums.length; z++) {
            if (z != y && z != x){
              for (int i = 0; i < nums.length; i++) {
                if (i != z && i != x && i != y){
                  if (nums[x] + nums[y] + nums[z] + nums[i] == target) {
                    tempResult.addAll([nums[x], nums[y], nums[z], nums[i]]);
                    tempResult.sort();
                    if (tempResult.isNotEmpty) {
                      if (result.length > 0) {
                        for (int c = 0; c < result.length; c++) {
                          if (result[c].toString() == tempResult.toString()) {
                            found = 'found';
                          }
                        }
                        if (found != 'found') {
                          result.add(tempResult);
                        }
                      } else {
                        result.add(tempResult);
                      }
                      found = '';
                      tempResult = [];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }
}
