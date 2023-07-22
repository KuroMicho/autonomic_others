import 'dart:io';
import 'dart:math';

void main() {
  var _ = int.parse(stdin.readLineSync()!);
  var list = stdin.readLineSync()!.split(" ");
  
  int SEED = 113;
  int LIMIT = 10000007;
  
  int result = 0;
  
  list.forEach((val) {
    result += int.parse(val);
    result *= SEED;
    result %= LIMIT;
  });
  stdout.write("$result");
}