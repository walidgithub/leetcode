import 'dart:math';

void main(List<String> arguments) {
  var solution = Solution();
  print('result is ${solution.mySqrt(4)}'); //2
  // print('result is ${solution.mySqrt(0)}'); //0
}

class Solution {
  int mySqrt(int x) {

    int i = 0;
    while(true) {
      if((i * i) > x) {
        return --i;
      } else if((i * i) == x) {
        return i;
      } else {
        i++;
      }
    }
  }
}
