class Solution {
  int returnToBoundaryCount(List<int> nums) {
    int position = 0;
    int returesToBoundary = 0;
    for (int move in nums) {
      position += move;
      if (position == 0) {
        returesToBoundary += 1;
      }
    }
    return returesToBoundary;
  }
}
