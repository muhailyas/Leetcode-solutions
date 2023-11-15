class Solution {
  String reversePrefix(String word, String ch) {
    int endPoint = word.indexOf(ch);
    
    if (endPoint != -1) {
      String toAdd = word.substring(0, endPoint + 1);
      String balance = word.substring(endPoint + 1);
      return String.fromCharCodes(toAdd.codeUnits.reversed) + balance;
    }

    return word;
  }
}
