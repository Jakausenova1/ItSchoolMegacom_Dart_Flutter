import 'dart:math';

void main() {
  //1
  int hours = Random().nextInt(23);
  print(hours);
  if (hours > 6 && hours < 19) {
    print("На улице светло");
  } else {
    print("На улице темно");
  }

//2
  int someInt = Random().nextInt(490000) + 10000;
  print(someInt);
  if (someInt <= 100000) {
    double zarPlata5 = someInt * 0.05;
    print(zarPlata5);
  } else if (someInt > 100000 && someInt < 200000) {
    double zarPlata7 = someInt * 0.07;
    print(zarPlata7);
  } else if (someInt > 200000) {
    double zarPlata10 = someInt * 0.1;
    print(zarPlata10);
  }

//3
  int someInt2 = Random().nextInt(12) + 1;
  print(someInt2);
  if (someInt2 == 1) {
    print("число 1 - январь, зима");
  } else if (someInt2 == 2) {
    print("число 2 - февраль, зима");
  } else if (someInt2 == 3) {
    print("число 3 - март, весна");
  } else if (someInt2 == 4) {
    print("число 4 - апрель, весна");
  } else if (someInt2 == 5) {
    print("число 5 - май, весна");
  } else if (someInt2 == 6) {
    print("число 6 - июнь, лето");
  } else if (someInt2 == 7) {
    print("число 7 - июль, лето");
  } else if (someInt2 == 8) {
    print("число 8 - август, лето");
  } else if (someInt2 == 9) {
    print("число 9 - сентябрь, осень");
  } else if (someInt2 == 10) {
    print("число 10 - октябрь, осень");
  } else if (someInt2 == 11) {
    print("число 11 - ноябрь, осень");
  } else if (someInt2 == 12) {
    print("число 12 - декабрь, зима");
  }
}
