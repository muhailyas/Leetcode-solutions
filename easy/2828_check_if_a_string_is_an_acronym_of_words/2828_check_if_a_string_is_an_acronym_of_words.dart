class Solution {
  bool isAcronym(List<String> words, String s) {
    if (words.length != s.length) {
      return false;
    }
    for (int i = 0; i < words.length; i++) {
      if (words[i][0] != s[i]) {
        return false;
      }
    }
    return true;
  }
}
