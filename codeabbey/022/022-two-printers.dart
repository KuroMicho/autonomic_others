import 'dart:io';

void main() {
  int tests = int.parse(stdin.readLineSync()!);
  List<String> answer = [];

  for (int test = 0; test < tests; test++) {
    List<double> inputs = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    double x = inputs[0];
    double y = inputs[1];
    double n = inputs[2];

    int a = (y * n / (x + y)).floor();
    int b = (x * n / (x + y)).floor();

    int answer_1 = ((a + 1) * x).floor() > (b * y).floor() ? ((a + 1) * x).floor() : (b * y).floor();
    int answer_2 = (a * x).floor() > ((b + 1) * y).floor() ? (a * x).floor() : ((b + 1) * y).floor();

    answer.add((answer_1 < answer_2) ? answer_1.toString() : answer_2.toString());
  }

  print(answer.join(' '));
}