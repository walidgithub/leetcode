void main(List<String> arguments) {
  var solution = Solution();
  print(solution.threeSum([12,5,-12,4,-11,11,2,7,2,-5,-14,-3,-3,3,2,-10,9,-15,2,14,-3,-15,-3,-14,-1,-7,11,-4,-11,12,-15,-14,2,10,-2,-1,6,7,13,-15,-13,6,-10,-9,-14,7,-12,3,-1,5,2,11,6,14,12,-10,14,0,-7,11,-10,-7,4,-1,-12,-13,13,1,9,3,1,3,-5,6,9,-4,-2,5,14,12,-5,-6,1,8,-15,-10,5,-15,-2,5,3,3,13,-8,-13,8,-5,8,-6,11,-12,3,0,-2,-6,-14,2,0,6,1,-11,9,2,-3,-6,3,3,-15,-5,-14,5,13,-4,-4,-10,-10,11]));

  // [3,-2,1,0] >> []
  // [-2,0,1,1,2] >> [[-2, 1, 1], [-2, 0, 2]]
  // [-1,0,1,2,-1,-4] >> [[-1, -1, 2], [-1, 0, 1]]
  // [0,0,0] or [0,0,0,0] >> [0,0,0]
  // [-1,0,1,0] >> [[-1,0,1]]
  // [-1,0,1,2,-1,-4,-2,-3,3,0,4] >> [[-3,-1,4],[-2,-1,3],[-1,-1,2],[-4,0,4],[-3,0,3],[-2,0,2],[-1,0,1],[-4,1,3],[-3,1,2]]
  // [34,55,79,28,46,33,2,48,31,-3,84,71,52,-3,93,15,21,-43,57,-6,86,56,94,74,83,-14,28,-66,46,-49,62,-11,43,65,77,12,47,61,26,1,13,29,55,-82,76,26,15,-29,36,-29,10,-70,69,17,49]
  // [0,-4,-1,-4,-2,-3,2] >> [[-2,0,2]]
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    List<int> temp = [];
    String found = '';

    String g = nums.join();
    int? f = int.tryParse(g);
    if (f == 0) {
      return [
        [0, 0, 0]
      ];
    }

    nums.sort();

    for (int x = 0; x < nums.length; x++) {
      for (int i = 0; i < nums.length; i++) {
        if (nums[x] <= nums[nums.length - 1] && nums[x] >= nums[0]) {

          if (x != i) {
            int secondNum = 0;

            if (nums[i] >= nums.length - 1) {
              break;
            }
            secondNum = (nums[x] + nums[i]) * -1;

            if (nums.contains(secondNum)) {
              if (x != i &&
                  i != nums.indexOf(secondNum) &&
                  x != nums.indexOf(secondNum)) {
                temp.addAll([nums[x], nums[i], secondNum]);
                temp.sort();

                if (result.length > 0) {
                  for (int c = 0; c < result.length; c++) {
                    if (result[c].toString() == temp.toString()) {
                      found = 'found';
                    }
                  }
                  if (found != 'found') {
                    result.add(temp);
                  }
                } else {
                  result.add(temp);
                }
                found = '';
                temp = [];
              }
            }
          }
        }
      }
    }
    return result;
  }
}
