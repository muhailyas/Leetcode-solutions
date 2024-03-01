class Solution {
  String triangleType(List<int> nums) {
    if (nums.toSet().length == 1) return 'equilateral';

    nums.sort();

    if (nums[0] + nums[1] > nums[2]) {
      if (nums[0] == nums[1] || nums[1] == nums[2]) {
        return 'isosceles';
      } else {
        return 'scalene';
      }
    } else {
      return 'none';
    }
  }
}
