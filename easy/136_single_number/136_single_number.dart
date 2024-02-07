class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> table = {};
    nums.forEach((e) {
      if (table.containsKey(e)) {
        table[e] = table[e]! + 1;
      } else {
        table[e] = 1;
      }
    });
    int result = 0;
    table.forEach((key, value) {
      if (value == 1) {
        result = key;
      }
    });
    return result;
  }
}
