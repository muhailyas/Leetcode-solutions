class Solution {
  int countTestedDevices(List<int> batteryPercentages) {
    int n = batteryPercentages.length;
    int count = 0;
    for (int i = 0; i < n; i++) {
      if (batteryPercentages[i] > 0) {
        count += 1;
        print(batteryPercentages);
        batteryPercentages = decreseList(batteryPercentages);
      }
    }
    return count;
  }

  List<int> decreseList(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      list[i] = list[i] - 1;
    }
    return list;
  }
}
