class Solution {
  int countPairs(List<int> nums, int target) {
    nums.sort(); // Sort the list first
    int count = 0;
    int left = 0;
    int right = nums.length - 1;

    while (left < right) {
      if (nums[left] + nums[right] < target) {
        count += (right - left);
        left++;
      } else {
        right--;
      }
    }
    return count;
  }
}
