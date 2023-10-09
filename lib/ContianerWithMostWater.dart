void main(List<String> arguments) {
  var solution = Solution();
  print(solution.maxArea([1, 2, 4, 3]));
  // 2,0 ---- 0
  // 1,2 ---- 1
  // 1,1 ---- 1
  // 1,8,6,2,5,4,8,3,7 ---- 49
  // 1,2,4,3 ---- 4
}

class Solution {
  int maxArea(List<int> height) {
    int maxarea = 0;
    if (height.length < 2 || height.length > 100000) {
      return maxarea;
    }
    for (int x = 0; x < height.length; x++) {
      for (int i = x; i < height.length; i++) {
        if (height[x] <= height[i]) {
          int calcArea = height[x] * (i - x);
          if (calcArea > maxarea) {
            maxarea = calcArea;
          }
        } else if (height[i] <= height[x]) {
          int calcArea = height[i] * (i - x);
          if (calcArea > maxarea) {
            maxarea = calcArea;
          }
        }
      }
    }
    return maxarea;
  }
}