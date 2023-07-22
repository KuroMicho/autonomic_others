import 'dart:io';
import 'dart:math';

void main() {
  var l = stdin.readLineSync()!.split(" ");
  var n_min = l.reduce((curr, next) => int.parse(curr) < int.parse(next) ? curr : next);
  var n_max = l.reduce((curr, next) => int.parse(curr) > int.parse(next) ? curr : next);
  stdout.write("$n_max $n_min");
}