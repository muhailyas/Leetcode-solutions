class Solution {
  int addDigits(int nums) {
    List<String> numbers = nums.toString().split('');
    if (numbers.length == 1) {
      return int.parse(numbers[0]);
    } else {
      print(numbers);
      int sum = 0;
      for (String digit in numbers) {
        sum += int.parse(digit);
      }
      return addDigits(sum);
    }
  }
}
