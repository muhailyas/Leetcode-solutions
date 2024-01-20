class Solution {
  int maximumNumberOfStringPairs(List<String> words) {
    int count = 0;

    for (int i = 0; i < words.length; i++) {
      for (int j = i + 1; j < words.length; j++) {
        if (words[i] == words[j].split('').reversed.join()) {
          count++;
        }
      }
    }
    return count;
  }
}
