
void main() {
  List<Map<String, List<String>>> matchingObjects = searchForSimilarWords(data, 'apple');
  print(matchingObjects);
}

List<Map<String, List<String>>> data = [
  {'fruits': ['apple', 'banana', 'orange']},
  {'colors': ['red', 'apple', 'blue']},
  {'animals': ['dog', 'cat', 'bird']},
  {'humans': ['pear', 'kiwi', 'apple']},
];

List<Map<String, List<String>>> searchForSimilarWords(List<Map<String, List<String>>> list, String searchTerm) {
  List<Map<String, List<String>>> result = [];

  for (Map<String, List<String>> item in list) {
    for (String key in item.keys) {
      if (item[key]!.contains(searchTerm)) {
        result.add(item);
        break;
      }
    }
  }

  return result;
}
