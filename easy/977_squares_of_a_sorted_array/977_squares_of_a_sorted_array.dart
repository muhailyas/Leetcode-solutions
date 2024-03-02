class Solution {
  List<int> sortedSquares(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      nums[i] = (nums[i] * nums[i]);
    }
    insertionSort(nums);
    return nums;
  }

  void insertionSort(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      int current = nums[i], j = i - 1;
      while (j >= 0 && current < nums[j]) {
        nums[j + 1] = nums[j];
        j -= 1;
      }
      nums[j + 1] = current;
    }
  }
}
