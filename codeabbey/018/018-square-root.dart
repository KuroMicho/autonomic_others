import 'dart:io';
import 'dart:math';

void main(){
  var a = int.parse(stdin.readLineSync()!);
  String result = "";
    
  for (var i = 0; i < a; i++) {
    var b = stdin.readLineSync()!.split(" ");
    double r = 1;
  
    for (var j=0; j < int.parse(b[1]); j++) {
      r = (r + (int.parse(b[0])/r))/2;
    }
      result += r.toStringAsFixed(7) + " ";
  }
  stdout.write("$result");
}