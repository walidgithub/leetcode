void main(List<String> arguments) {
  var solution = Solution();
  // print('result is ${solution.convertToTitle(1)}'); // A
  // print('result is ${solution.convertToTitle(28)}'); // AB
  // print('result is ${solution.convertToTitle(701)}'); // ZY
  print('result is ${solution.convertToTitle(1250)}'); //
}

class Solution {
  String convertToTitle(int columnNumber) {

    var alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var title = '';
    while(columnNumber > 0) {

      columnNumber--;

      // calculate quotient and remainder (remainder used for conversion, quotient for the next loop)
      var quotient = (columnNumber / 26).floor();
      var remainder = columnNumber % 26;

      // add new character to the front of the string, so we don't have to reverse it later
      title = alphabet[remainder] + title;

      // overwrite the columNumber with the newly calculated integer
      columnNumber = quotient;
    }

    return title;
  }

}
