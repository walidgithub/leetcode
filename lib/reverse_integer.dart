void main(List<String> arguments) {
  var solution = Solution();

  print(solution.reverse(1534236469));
}

class Solution {
  int reverse(int x) {
    if (x == 0) {
      return 0;
    }
    List splitedNum = x.toString().split('').reversed.toList();
    if (splitedNum[splitedNum.length - 1] == '-') {
      splitedNum.removeAt(splitedNum.length - 1);
      splitedNum.insert(0, '-');
      if (splitedNum[1] == '0') {
        splitedNum.removeAt(1);
      }
    } else {
      if (splitedNum[0] == '0') {
        splitedNum.removeAt(0);
      }
    }

    return int.parse(splitedNum.join());
  }
}