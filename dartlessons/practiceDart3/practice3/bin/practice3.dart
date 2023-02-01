import 'dart:math';

void main() {
  taskOne(x: 6, y: 0);
  taskTwo("Happy-New-Year");
  taskThree(a: 2, b: 7, c: 4);
}

taskOne({required int x, required int y}) {
  double radius = sqrt((x * x) + (y * y));
  int point = 0;
  if (10 > radius && radius > 5) {
    point = 1;
  } else if (radius <= 5 && radius > 1) {
    point = 5;
  } else if (radius <= 1 && radius >= 0) {
    point = 10;
  }
  print('Вы заработали $point очко, вы попали $radius');
}

taskTwo(String string) {
  String a = string;
  if (string.contains('-')) {
    a = a.replaceAll('-', ' ');
  }
  List<String> b = a.split(' ');
  List<String> abbreviationList = [];
  for (String s in b) {
    String abbreviation = s.trim()[0];
    abbreviationList.add(abbreviation);
  }
  print(
      "Фраза: $string \nаббревиатура: ${abbreviationList.join().toUpperCase()}");
}

taskThree({required int a, required int b, required int c}) {
  if (a == b && b == c && c == a) {
    print('равносторонний треугольник');
  } else if (a == b || a == c || b == c) {
    print('равнобедренный треугольник');
  } else {
    print('разносторонний треугольник');
  }
  print('a=$a\nb=$b\nc=$c');
}
