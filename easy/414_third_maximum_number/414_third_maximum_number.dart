class Solution {
  int thirdMax(List<int> nums) {
    nums = nums.toSet().toList();
    final reversedList = reverseSort(nums);

    return reversedList.length > 2 ? reversedList[2] : reversedList[0];
  }

  List<int> reverseSort(List<int> list) {
    list.sort();
    List<int> newList = [];
    for (var i = list.length - 1; i >= 0; i--) {
      newList.add(list[i]);
    }
    return newList;
  }
}
