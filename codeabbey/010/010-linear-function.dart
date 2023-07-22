import 'dart:io';

void main() {
  var a = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < a; i++) {
    var b = stdin.readLineSync()!.split(" ");
    var x1 = double.parse(b[0]);
    var y1 = double.parse(b[1]);
    var x2 = double.parse(b[2]);
    var y2 = double.parse(b[3]);
    var y = ((y1 * x2) - (y2 * x1)) / (x2 - x1);
    var x = (y1 - y) / x1;
    stdout.write("($x $y) ");
  }
}