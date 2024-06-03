class Solution {
  String reverseVowels(String s) {
    int i = 0;
    int j = s.length - 1;
    final vowels = 'aeiouAEIOU'.split('');
    List<String> letters = s.split('');
    while (i < j) {
      while (i < j && !vowels.contains(letters[i])) {
        i++;
      }
      while (i < j && !vowels.contains(letters[j])) {
        j--;
      }
      if (vowels.contains(letters[i]) && vowels.contains(letters[j])) {
        String temp = letters[i];
        letters[i] = letters[j];
        letters[j] = temp;
        i++;
        j--;
      }
    }
    return letters.join('');
  }
}
