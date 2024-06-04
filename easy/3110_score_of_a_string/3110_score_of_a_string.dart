// class Solution {
//   int scoreOfString(String s) {
//     final ascci = s.codeUnits;
//     print(ascci);
//     final sumOf = [];
//     for (var i = 0, j = 1; i < ascci.length - 1; i++, j++) {
//       final number = ascci[i] - ascci[j];
//       sumOf.add(number.abs());
//     }
//     int sum = 0;
//     for (int element in sumOf) {
//       sum += element;
//     }
//     return sum;
//   }
// }

// optimized solution

class Solution {
  int scoreOfString(String s) {
    int sum = 0;
    final ascci = s.codeUnits;
    for (var i = 0; i < ascci.length - 1; i++) {
      sum += (ascci[i] - ascci[i + 1]).abs();
    }
    return sum;
  }
}
