void main(List<String> arguments) {
  var solution = Solution();
  print(solution.isValid('{[]}'));
  // ()[]{} >> true
  // () >> true
  // (] >> false
  // {[]} >> true
  // (){}}{ >> false
  // ({{{{}}})) >> false
  // ([)] >> false
  // [({(())}[()])] >> true
  // [([]]) >> false
  // [()](()) >> true
}

class Solution {
  bool isValid(String s) {
    Map<String, String> parenthesis = <String, String>{
      ")": "(",
      "}": "{",
      "]": "[",
    };
    List<String> list = <String>[];

    for (String item in s.split("")) {
      if (parenthesis.containsKey(item)) {
        print(parenthesis[item]);
        print('******');
        if (list.length == 0 || list[list.length - 1] != parenthesis[item]) {
          print('false');
          return false;
        } else {
          print('remove');
          list.removeLast();
        }
      } else {
        print(item);
        print('add');
        list.add(item);
      }
    }

    return list.length == 0;
  }
}
