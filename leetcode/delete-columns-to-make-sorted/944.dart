import 'dart:collection';

class A {
  int minDeletionSize(List<String> strs) {
    int answer = 0;
    for (int i = 0; i < strs[0].length; i++) {
      for (int j = 0; j < strs.length - 1; j++) {
        if (strs[j + 1].codeUnitAt(i) < strs[j].codeUnitAt(i)) {
          answer++;
          break;
        }
      }
    }
    return answer;
  }
}