import 'dart:io';
import 'dart:math';

void main() {
  var n = stdin.readLineSync().split(" ");
  List<String> filter = [];
  filter.addAll(n);
  filter.removeWhere((e) => e == '-1');
  List<int> arr = filter.map((e) => int.parse(e)).toList();
  var sortedarray = bubbleSort(arr);
  print(sortedarray);
}

bubbleSort(array) {
  int SEED = 113;
  int LIMIT = 10000007;
  
  int nSwaps = 0;
  int result = 0;
  
  int lengthOfArray = array.length;
  
  for (int i = 0; i < lengthOfArray - 1; i++) {
      if (array[i] > array[i + 1]) {
        nSwaps++;
        int temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
      }
  }
  
  array.forEach((val) {
    result += val;
    result *= SEED;
    result %= LIMIT;
  });
  
  return (nSwaps.toString() + ' ' + result.toString());
}