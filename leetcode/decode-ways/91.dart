class B {
// Runtime: 475 ms, faster than 50.00% of Dart online submissions for Decode Ways.
// Memory Usage: 140.6 MB, less than 100.00% of Dart online submissions for Decode Ways.
  // If the current character is 0, then the number of ways to decode is 0. Otherwise, the number of
  // ways to decode is the sum of the number of ways to decode the substring without the current
  // character and the number of ways to decode the substring without the current character and the
  // previous character
  //
  // Args:
  //   i (int): the index of the current character in the string
  //   s (String): the string to decode
  //   dp (List<int>): a list of integers, where dp[i] is the number of ways to decode the string
  // s[0..i]
  //
  // Returns:
  //   The number of ways to decode a string.
  int cal(int i, String s, List<int> dp) {
    if (i == -1 || i == 0) return 1;

    if (dp[i] != -1) return dp[i];
    int w1 = 0, w2 = 0;
    if (s.codeUnitAt(i) > '0'.codeUnitAt(0)) w1 = cal(i - 1, s, dp);
    if (s[i - 1] == '1' ||
        s[i - 1] == '2' && s.codeUnitAt(i) < '7'.codeUnitAt(0))
      w2 = cal(i - 2, s, dp);
    return dp[i] = w1 + w2;
  }

  /// It returns the number of ways to decode a string.
  ///
  /// Args:
  ///   s (String): the string to be decoded
  ///
  /// Returns:
  ///   The number of ways to decode the string.
  int numDecodings(String s) {
    int n = s.length;
    if (s == "0" && s[0] == '0') return 0;
    List<int> dp = List.filled(n + 1, -1);
    return cal(n - 1, s, dp);
  }
}