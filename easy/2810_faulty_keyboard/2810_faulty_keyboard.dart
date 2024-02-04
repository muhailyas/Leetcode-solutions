class Solution {
  String finalString(String s) {
    String result = '';
    for (String element in s.split('')) {
      if (element == 'i') {
        result = result.split('').reversed.join();
      } else {
        result += element;
      }
    }
    return result;
  }
}
