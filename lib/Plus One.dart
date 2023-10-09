void main(List<String> arguments) {
  var solution = Solution();
  // print('result is ${solution.plusOne([1, 2, 9])}');
  // print('result is ${solution.plusOne([4,3,2,1])}');
  // print('result is ${solution.plusOne([9])}');
  print('result is ${solution.plusOne([9, 9])}');
  // print('result is ${solution.plusOne([1, 2, 3])}');
  // print('result is ${solution.plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6])}');
}

class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length;

    for (int i = n - 1; i >= 0; i--) {

      if (n == 1) {
        if (digits[i] < 9) {
          digits[i]++;
          return digits;
        } else {
          digits[i] = 1;
          digits.add(0);
          return digits;
        }
      }

      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }

      digits[i] = 0;
    }

    List<int> newNumber = digits;
    newNumber.insert(0, 1);

    return newNumber;
  }
}
