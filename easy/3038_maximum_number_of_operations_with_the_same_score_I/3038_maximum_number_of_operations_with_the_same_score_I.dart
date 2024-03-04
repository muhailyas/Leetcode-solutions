class Solution {
  int maxOperations(List<int> nums) {
    if (nums.length < 2) return 0;

    int a = nums[0] + nums[1];
    int count = 1;
    for (int i = 2; i < nums.length - 1; i += 2) {
      if (nums[i] + nums[i + 1] == a) {
        count++;
      } else {
        break;
      }
    }
    return count;
  }
}
