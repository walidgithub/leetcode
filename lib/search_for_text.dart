void main() {
  List<List<String>> separateObject1 = separateList1(data1);
  List<List<String>> separateObject2 = separateList2(data2);
  List<Map<String, dynamic>> prepareObject = prepareResults(separateObject1,'لا');
  List<String> finalObject = getFinalResults(prepareObject);
  // print(separateObject1);
  // print(separateObject2);
  // print(prepareObject);
  print(finalObject);
}
List<String> result = [];
List<List<String>> resultData1 = [];
List<List<String>> resultData2 = [];

List<Map<String, List>> prepareList = [];
List<String> finalList = [];

List<String> data1 = [
  'الم (1) ذلك الكتاب لا ريب فيه هدى للمتقين (2) الذين يؤمنون بالغيب ويقيمون الصلاة ومما رزقناهم ينفقون (3)',
  'الم (1) الله لا إله إلا هو الحي القيوم (2) نزل عليك الكتاب بالحق مصدقا لما بين يديه وأنزل التوراة والإنجيل (3)',
];

List<String> data2 = [
  'الٓمٓ (1) ذَٰلِكَ ٱلۡكِتَٰبُ لَا رَيۡبَۛ فِيهِۛ هُدٗى لِّلۡمُتَّقِينَ (2) ٱلَّذِينَ يُؤۡمِنُونَ بِٱلۡغَيۡبِ وَيُقِيمُونَ ٱلصَّلَوٰةَ وَمِمَّا رَزَقۡنَٰهُمۡ يُنفِقُونَ (3)',
  'الٓمٓ (1) ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلۡحَيُّ ٱلۡقَيُّومُ (2) نَزَّلَ عَلَيۡكَ ٱلۡكِتَٰبَ بِٱلۡحَقِّ مُصَدِّقٗا لِّمَا بَيۡنَ يَدَيۡهِ وَأَنزَلَ ٱلتَّوۡرَىٰةَ وَٱلۡإِنجِيلَ (3)',
];

List<List<String>> separateList1(List data1) {

  for (int index = 0; index < data1.length; index++) {
    RegExp regex = RegExp(r'\((\d+)\)');
    Iterable<RegExpMatch> matches = regex.allMatches(data1[index]);

    int lastIndex = 0;
    for (RegExpMatch match in matches) {
      int start = match.start;
      int end = match.end;
      String textWithoutBrackets = data1[index].substring(lastIndex, start).trim();
      if (textWithoutBrackets.isNotEmpty) {
        result.add(textWithoutBrackets);
      }
      result.add(match.group(0)!);
      lastIndex = end;
    }

    String lastPart = data1[index].substring(lastIndex).trim();
    if (lastPart.isNotEmpty) {
      result.add(lastPart);
    }
    resultData1.add(result);
    result = [];
  }
  return resultData1;
}

List<List<String>> separateList2(List data2) {

  for (int index = 0; index < data2.length; index++) {
    RegExp regex = RegExp(r'\((\d+)\)');
    Iterable<RegExpMatch> matches = regex.allMatches(data2[index]);

    int lastIndex = 0;
    for (RegExpMatch match in matches) {
      int start = match.start;
      int end = match.end;
      String textWithoutBrackets = data2[index].substring(lastIndex, start).trim();
      if (textWithoutBrackets.isNotEmpty) {
        result.add(textWithoutBrackets);
      }
      result.add(match.group(0)!);
      lastIndex = end;
    }

    String lastPart = data2[index].substring(lastIndex).trim();
    if (lastPart.isNotEmpty) {
      result.add(lastPart);
    }
    resultData2.add(result);
    result = [];
  }
  return resultData2;
}

List<Map<String, List>> prepareResults(List prepare1, String text) {
  for (int i = 0; i < prepare1.length; i++) {
    for (int j = 0; j < prepare1[i].length; j++) {
      if (prepare1[i][j].contains(text)) {
        prepareList.add({
          'index': [i, j],
        });
      }
    }
  }
  return prepareList;
}

List<String> getFinalResults(List oldList) {
  for (int i = 0; i < oldList.length; i++) {

    String finalText = '';

    if (oldList[i]['index'][1] > 0) {
      finalText = '${resultData2[oldList[i]['index'][0]][(oldList[i]['index'][1]) - 2]} ${resultData2[oldList[i]['index'][0]][(oldList[i]['index'][1]) - 1]}';
    }
    finalText = finalText + ' ${resultData2[oldList[i]['index'][0]][oldList[i]['index'][1]]} ${resultData2[oldList[i]['index'][0]][(oldList[i]['index'][1]) + 1]}';
    if (oldList[i]['index'][1] <= oldList.length) {
      finalText =  finalText + ' ${resultData2[oldList[i]['index'][0]][(oldList[i]['index'][1]) + 2]} ${resultData2[oldList[i]['index'][0]][(oldList[i]['index'][1]) + 3]}';
    }

    finalList.add(finalText);
  }
  return finalList;
}

