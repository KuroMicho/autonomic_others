import 'dart:io';

void main() {
  int result = 0;
  var a = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < a; i++) {
    result = 0;
    var b = stdin.readLineSync()!.split(" ");
    var x = int.parse(b[0]);
    var y = int.parse(b[1]);
    var z = int.parse(b[2]);
    var res = (x * y) + z;
    for (int i = res; i > 0; i = (i / 10).floor()) {
      result += (i % 10);
    }
    stdout.write("$result ");
  }
}