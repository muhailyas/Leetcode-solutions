class Solution {
  int strStr(String haystack, String needle) {
    for (int i = 0; i < haystack.length - needle.length + 1; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }
    return -1;
  }
}
