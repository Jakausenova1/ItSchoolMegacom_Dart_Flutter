import 'dart:io';

void main() {
//   List a = [12, 23, 55, "hh"];
//   for (var element in a) {
//     print(element);
//   } //обращаемся к элементу

//   List b = [2, 4, 5, 10];
//   print(a.map((i) => i * i).toList());

  //1 задание: Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
  List c = [for (int i = 10; i <= 20; i++) i];
  print(c.map((e) => e * e).toList());

  //2 задание: Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.
  print('2 задание Введите число: ');
  String two = stdin.readLineSync()!;
  int b = int.parse(two);
  print(taskTwo(b));

  //3
  print('3 задание: сумма ');
  String s = stdin.readLineSync()!;
  int bb = int.parse(s);
  print('кол-во лет');
  String n = stdin.readLineSync()!;
  int bbb = int.parse(n);
  print(taskThree(bb, bbb));

  // 4 задание: Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.
  for (int i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      print(i);
    }
  }

  //5 задание: Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      print(i);
    }
  }

  //6: Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
  for (int i = 10; i <= 99; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      print(i);
    }
  }

  //7: Найти сумму чисел от 100 до 200 кратных 17.
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      print(i);
    }
  }

  //8
  print('8 задание Введите число: ');
  String a = stdin.readLineSync()!;
  int nnn = int.parse(a);
  print(task8(nnn));
}

//2 задание
taskTwo(n) {
  List<int> count = [];
  int counter = 0;
  for (int i = 1; i <= n; i++) {
    count.add(i);
  }
  for (int i = 1; i < count.length; i++) {
    counter += count[i];
  }
  return counter;
}

//3 задание
taskThree(s, n) {
  List<int> count = [];
  double counter = 0;
  for (int i = 1; i <= s; i++) {
    count.add(i);
  }
  for (int i = 1; i < count.length; i++) {
    counter = ((count[i] * 0.03) * n) + s;
  }
  return counter;
}

//8: Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N
task8(nnn) {
  int summ = 0;
  for (int i = 1; i <= nnn; i++) {
    summ += i * i;
  }
  return summ;
}
