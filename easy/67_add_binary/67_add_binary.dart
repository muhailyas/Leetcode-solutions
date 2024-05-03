class Solution {
  String addBinary(String a, String b) {
    BigInt binary1 = BigInt.parse(a, radix: 2);
    BigInt binary2 = BigInt.parse(b, radix: 2);
    BigInt sum = binary1 + binary2;
    return sum.toRadixString(2);
  }
}
