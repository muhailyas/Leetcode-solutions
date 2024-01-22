class Solution {
  int findNumbers(List<int> nums) {
    int count = 0;
    for (int number in nums) {
      if (number.toString().length % 2 == 0) {
        count += 1;
      }
    }
    return count;
  }
}
