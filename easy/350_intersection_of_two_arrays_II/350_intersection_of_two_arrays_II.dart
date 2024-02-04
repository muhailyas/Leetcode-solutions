class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> numbers = [...nums1];
    List<int> result = [];

    for (int i = 0; i < nums2.length; i++) {
      if (numbers.contains(nums2[i])) {
        result.add(nums2[i]);
        numbers.remove(nums2[i]);
      }
    }

    return result;
  }
}