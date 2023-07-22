import 'dart:io';
import 'dart:math';

void main() {
  var a = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < a; i++) {
      var b = stdin.readLineSync()!.split(" ");
      var day1 = (int.parse(b[0]) * 24 * 60 * 60) + (int.parse(b[1]) * 60 * 60) + (int.parse(b[2]) * 60) + (int.parse(b[3]));
      var day2 = ((int.parse(b[4]) * 24 * 60 * 60) + (int.parse(b[5]) * 60 * 60) + (int.parse(b[6]) * 60) + (int.parse(b[7])));
      var diff = day2-day1;
      var secs = diff%60;
      diff = ((diff-secs)/60).round();
      var mins = diff%60;
      diff = ((diff-mins)/60).round();
      var hours = diff%24;
      diff = ((diff-hours)/24).round();
      var days = diff;
      stdout.write("($days $hours $mins $secs) ");
    }
}