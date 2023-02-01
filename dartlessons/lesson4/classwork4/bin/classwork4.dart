import 'dart:math';

void main() {
// funcOne (); //1

// funcName("hh"); //2

// summ (a: 10, b: 12); //3, задаем параметры и вызываем ф-ю

// String name=returnName();
// print (name);  //4

// print (sum(10,1));  //5

// print (returnList ([1,2,3,4], 10));  //6

// print (taskThree("ru"));  //task3
// taskFour(text: "abcde"); //task4

// int random = Random().nextInt(5);  //task5
// print (random);
// print (taskFive(random));

// print (traffic("red")); //task8

  int random = Random().nextInt(490000) + 10000; //task2 if else
  print(random);
  print(taxCalc(random)); //task2 if else
}

//1
// void funcOne () {
//   print ('ff');
// }

//2
// void funcName (String name) {
//   print (name);
// }

//3
// void summ ({required int a, required int b}) {
//   print (a+b);
// }

//4
// String returnName () {
//   return "Jaka";
// }

//5
// int sum (int a, int b){
// return a+b;
// }

//6
// List returnList (List a, int b) {
//   a.add(b);
//   return a;
// }

//7
// String taskOne (int number) {
// int a= 2;
// if (a==1) {
//   print ('Большой палец');
// } else if (a==2) {
//   print ('Указательный палец');
// } else if (a==3) {
//   print ('Средний палец');
// }
// else if (a==4) {
//   print ('Безымянный палец');
// } else if (a==5) {
//   print ('Мизинец');
// } print "error"

//task 2
// TaskTwo (int b) {
// int b = 5;
// if (b<15) {
//   print ("первая четверть");
// } else if (b<30) {
//   print ("вторая четверть");
// } else if (b<45) {
//   print ("третья четверть");
// } else if (b<59) {
//   print ("четвертая четверть");
// } else {
//   print ("введите число от 0 до 59");
// }

// }

//task 3
List taskThree(String lang) {
  List arr = [];
  if (lang == "ru") {
    arr.add("ru");
    return arr;
  } else if (lang == "eng") {
    arr.add("eng");
    return arr;
  } else {
    arr.add("error");
  }
  return arr;
}

//task 4
void taskFour({required String text}) {
  if (text[0] == "a") {
    print("да");
  } else {
    print("нет");
  }
}

//task 5
String taskFive(int num) {
  String result = "error";
  if (num == 1) {
    result = 'зима';
  } else if (num == 2) {
    result = 'лето';
  } else if (num == 3) {
    result = 'весна';
  } else if (num == 4) {
    result = 'осень';
  }
  return result;
}

//task 6
String taskSix({required int num}) {
  if (num < 0) {
    return "верно";
  } else {
    return "неверно";
  }
}

//7
String taskSeven(String numbers) {
  int sumOne =
      int.parse(numbers[0]) + int.parse(numbers[1]) + int.parse(numbers[2]);
  int sumTwo =
      int.parse(numbers[3]) + int.parse(numbers[4]) + int.parse(numbers[5]);

  if (sumOne == sumTwo) {
    return 'сумма первых трех цифр равняется сумме вторых трех цифр';
  } else {
    return 'сумма первых трех цифр НЕ равняется сумме вторых трех цифр';
  }
}

//8
String traffic(String color) {
  String result = "error";
  if (color == "red") {
    result = "stop";
  } else if (color == "green") {
    result = "go";
  } else if (color == "yellow") {
    result = "wait";
  }
  return result;
}

//homework if else to func 2
String taxCalc(int summ) {
  double result;
  double taxProcent;
  if (summ <= 100000) {
    taxProcent = 5;
    result = summ * 0.05;
  } else if (summ > 100000 && summ <= 200000) {
    taxProcent = 7;
    result = summ * 0.07;
  } else if (summ > 200000) {
    taxProcent = 10;
    result = summ * 0.1;
  } else {
    taxProcent = 0;
    result = 0;
  }
  return "$result, $taxProcent";
}
