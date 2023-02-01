import 'dart:io';

void main() {
  print('введите первое значение');
  String f = stdin.readLineSync()!;
  int first = int.parse(f);
  print('введите второе значение');
  String s = stdin.readLineSync()!;
  int second = int.parse(s);
  print('выберите операцию(+ - * / )');
  String oper = stdin.readLineSync()!;
  print(calcul(first, second, oper));

//конвертер
  Map buyCash = {"USD": 85, "EURO": 90.80, "RUB": 1.34, "KZT": 0.126};
  Map sellCash = {"USD": 86, "EURO": 91, "RUB": 1.38, "KZT": 0.19};
  print("Покупка $buyCash");
  print("Продажа $sellCash");
  print('Выберите операци: \n1) Покупка \n2) Покупка');
  String operation = stdin.readLineSync()!;
  print('Введите сумму');
  double money = double.parse(stdin.readLineSync()!);
  if (operation == "1") {
    buyMoney(money, buyCash);
  } else if (operation == "2") {
    sellMoney(money, buyCash);
  }
}

//калькулятор
calcul(f, s, oper) {
  if (oper == "*") {
    return (f * s);
  } else if (oper == "+") {
    return (f + s);
  } else if (oper == "/") {
    return (f / s);
  } else if (oper == "-") {
    return (f - s);
  }
}

//конвертер валют
buyMoney(double dengi, Map kursValut) {
  print('Выберите валюту');
  String choiceMoney = stdin.readLineSync()!;
  print(
      "Вы купили ${dengi * kursValut[choiceMoney]} сом за $dengi $choiceMoney");
}

sellMoney(double dengi, Map kursValut) {
  print('Выберите валюту');
  String choiceMoney = stdin.readLineSync()!;
  print(
      "Вы купили ${dengi / kursValut[choiceMoney]} сом за $dengi $choiceMoney");
}
