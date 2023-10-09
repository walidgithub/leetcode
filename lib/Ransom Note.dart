void main(List<String> arguments) {
  var solution = Solution();
  // print('result is ${solution.canConstruct('fihjjjjei', 'hjibagacbhadfaefdjaeaebgi')}'); //false
  // print('result is ${solution.canConstruct('a', 'b')}'); //false
  // print('result is ${solution.canConstruct('aa', 'ab')}'); //false
  // print('result is ${solution.canConstruct('baa', 'aab')}'); //true
  print('result is ${solution.canConstruct('aa', 'aab')}'); //true
}

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    int resultTotal = 0;

    List ransomNoteListed = ransomNote.split('');
    List magazineListed = magazine.split('');

    if (ransomNoteListed.length > magazineListed.length) {
      return false;
    }

    for (int i = 0; i < ransomNoteListed.length; i++) {
      for (int j = 0; j < magazineListed.length; j++) {
        if (ransomNoteListed[i] == magazineListed[j]) {
          resultTotal++;
          if (resultTotal == ransomNoteListed.length) {
            return true;
          }
          magazineListed.removeAt(j);
          break;
        }
      }
    }

    if (resultTotal == ransomNoteListed.length) {
      return true;
    } else {
      return false;
    }
  }
}
