class Solution {
  int percentageLetter(String s, String letter) {
    int count = 0;
    int length = s.length;
    for (int i = 0; i < length; i++) {
      if (s[i] == letter) {
        count += 1;
      }
    }
    if (count == 0) {
      return 0;
    } else {
      return count * 100 ~/ length;
    }
  }
}