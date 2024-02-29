class Solution {
  int countKeyChanges(String s) {
    int count = 0;
    String? prev;
    for (int code in s.runes) {
      String char = String.fromCharCode(code);
      if (prev != null && char.toLowerCase() != prev.toLowerCase()) {
        count += 1;
      }
      prev = char;
    }
    return count;
  }
}
