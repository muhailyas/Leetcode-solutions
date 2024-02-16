class Solution {
  int findChampion(List<List<int>> grid) {
    int max = 0;
    int pos = 0;
    for (int i = 0; i < grid.length; i++) {
      int total = sum(grid[i]);
      if (total > max) {
        pos = i;
        max = total;
      }
    }
    return pos;
  }

  int sum(List<int> numbers) {
    int sum = 0;
    for (var element in numbers) {
      sum += element;
    }
    return sum;
  }
}
