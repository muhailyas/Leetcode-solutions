class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    final for1 = <int>{};
    final for2 = <int>{};
    for (int i in nums1) {
      if (!nums2.contains(i)) {
        for1.add(i);
      }
    }
    for (int i in nums2) {
      if (!nums1.contains(i)) {
        for2.add(i);
      }
    }
    return [for1.toList(), for2.toList()];
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums1 = [1, 2, 3, 3];
  List<int> nums2 = [1, -1, -1021, 101, 2, 2];
  solution.findDifference(nums1, nums2);
}
