public class Solution {
    public string GcdOfStrings(string str1, string str2) {
        int len1 = str1.Length;
        int len2 = str2.Length;
 
        for (int i = Math.Min(len1, len2); i > 0; i--) {
            if (len1 % i == 0 && len2 % i == 0) {
                string substr = str1.Substring(0, i);
                if (IsCommonDivisor(substr, str1) && IsCommonDivisor(substr, str2)) {
                    return substr;
                }
            }
        }
        return "";
    }
 
    private bool IsCommonDivisor(string divisor, string str) {
        int len = str.Length;
        int divisorLen = divisor.Length;
        for (int i = 0; i < len; i += divisorLen) {
            if (!str.Substring(i, divisorLen).Equals(divisor)) {
                return false;
            }
        }
        return true;
    }
}