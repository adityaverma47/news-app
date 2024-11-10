List splitStringBySpace(String text) {
  List<String> splitedWord = text.split(' '); // Split the string by space

  if (splitedWord.length == 3) {
    return splitedWord;
  }
  return splitedWord;
}

removeZeroAfterDecimal({double? value}) {
  return value == (value ?? 0).toInt() ? (value ?? 0).toInt() : value;
}
