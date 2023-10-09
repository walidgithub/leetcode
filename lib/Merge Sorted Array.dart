void main(List<String> arguments) {
  var solution = Solution();
  solution.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3); // [1,2,2,3,5,6]
  // solution.merge([-1,0,0,3,3,3,0,0,0], 6, [1,2,2], 3); // [-1,0,0,1,2,2,3,3,3]
  // solution.merge([-1,-1,0,0,0,0], 4, [-1,0], 2); // [-1,-1,-1,0,0,0]
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {

    for (int i = nums1.length - 1; i >= 0; i--) {
      if (nums1[i] == 0 && i + 1 > m){
        nums1.removeAt(i);
      }else{
        break;
      }
    }

    for (int i = 0; i < nums2.length; i++) {
      nums1.add(nums2[i]);
    }

    nums1.sort();

    print(nums1);
  }
}
