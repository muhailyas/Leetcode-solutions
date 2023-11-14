class Solution {
  int numOfStrings(List<String> patterns, String word) {
    int count = 0;

    for (String pattern in patterns) {
      if (word.contains(pattern)) {
        count++;
      }
    }

    return count;
  }
}
