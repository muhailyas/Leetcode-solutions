/*https://leetcode.com/problems/n-repeated-element-in-size-2n-array/description*/

class Solution {
  int repeatedNTimes(List<int> nums) {
    final list = [];
    for (int number in nums) {
      if (list.contains(number)) {
        return number;
      }
      list.add(number);
    }
    return 0;
  }
}
