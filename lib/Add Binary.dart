void main(List<String> arguments) {
  var solution = Solution();
  // print(
  //     'result is ${solution.addBinary('10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101', '110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011')}'); //100
  // print('result is ${solution.addBinary('11','1')}'); //100
  // print('result is ${solution.addBinary('1010', '1011')}'); //10101
  // print('result is ${solution.addBinary('10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101', '110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011')}'); //110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000
}

class Solution {
  String addBinary(String a, String b) {
    //binary to decimal

    int firstNumber = getBinaryToDecimal(int.parse(a));
    int secondNumber = getBinaryToDecimal(int.parse(b));

    int totalRadix = firstNumber + secondNumber;

    //decimal to binary

    // final decimalNumber1 = totalRadix.toRadixString(2);

    num decimalNumber = getDecimalToBinary(totalRadix);

    return decimalNumber.toString();
  }

  // int getBinaryToDecimal(String x) {
  // x = "0" + x;
  // int start = 1;
  // int binFirstResult = 0;
  // for (int i = x.length - 1; i >= 0; i--) {
  //   binFirstResult = binFirstResult + (start * int.parse(x[i]));
  //   start = start * 2;
  // }
  //
  // return binFirstResult;
  // }

  int getBinaryToDecimal(int x) {
    int binaryNumber, decimalNumber = 0, j = 1, remainder;
    binaryNumber = x;

    while (binaryNumber != 0) {
      remainder = binaryNumber % 10;
      decimalNumber = decimalNumber + remainder * j;
      j = j * 2;
      binaryNumber = (binaryNumber / 10).toInt();
    }
    return decimalNumber;
  }

  num getDecimalToBinary(int x) {
    var listNum = [];
    int decimalNum, i = 0;
    decimalNum = x;
    while (decimalNum != 0) {
      listNum.insert(i, decimalNum % 2);
      i++;
      decimalNum = (decimalNum / 2).toInt();
    }

    num a = 0;
    for (i = (i - 1); i >= 0; i--) {
      a = a * 10 + listNum[i];
    }
    return a;
  }
}
