void main() {
//the latest task
  String x = 'a';
  String z = 'dart';
  print(taskThree(x: x, z: z));
//1
  for (int i = 0; i < 10; i++) {
    print(i * i); //пусть возвр в квадрат
    if (i == 5) {
      break;
    } //цикл прервем на 5
  }

// //2
  List a = [1, 4, 6, 77, 0, 123];
  for (int b = 0; b < a.length; b++) {
    print(a[b]);
  }
//3
  List b = [1, 4, 6, 77, 0, 123];
  int counter = 0;
  for (int i = 0; i < a.length; i++) {
    counter++;
  }
  print(counter);

//4
  List c = [1, 4, 6, 77, 0, 123];
  List d = [];
  for (int i = 0; i < c.length; i++) {
    print(c[i]);
    if (c[i].isEven) {
      //c[i]%2==0
      d.add(c[i]);
    }
  }
  print(d);

//задание 1
  List aa = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List bb = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List result = [];
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (!result.contains(aa[i]) && aa[i] == bb[j]) {
        result.add(aa[i]);
      }
    }
  }
  print(result);

//2
  List cc = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List dd = [];
  for (int i = 0; i < cc.length; i++) {
    if (cc[i].isEven) {
      dd.add(cc[i]);
    }
  }
  print(dd);
}

//3
int taskThree({required String x, required String z}) {
  int counter = 0;

  for (int i = 0; i < z.length; i++) {
    if (x == z[i]) {
      counter++;
    }
  }
  return counter;
}
