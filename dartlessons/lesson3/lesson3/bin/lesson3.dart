void main() {
//задания
//1
  int a = 2;
  if (a == 1) {
    print('Большой палец');
  } else if (a == 2) {
    print('Указательный палец');
  } else if (a == 3) {
    print('Средний палец');
  } else if (a == 4) {
    print('Безымянный палец');
  } else if (a == 5) {
    print('Мизинец');
  }

//2
  int b = 5;
  if (b < 15) {
    print("первая четверть");
  } else if (b < 30) {
    print("вторая четверть");
  } else if (b < 45) {
    print("третья четверть");
  } else if (b < 59) {
    print("четвертая четверть");
  } else {
    print("введите число от 0 до 59");
  }

//3
  String lang = "en";
  List ru = ["пон,вт,ср,чт,пт,суб,вскр"];
  List en = ["mon,tu,wd,th,fr,sat,sun"];
  if (lang == "ru") {
    print(ru);
  } else if (lang == "en") {
    print(en);
  }

//4
  String ab = "abcde";
  if (ab[0] == "a") {
    print("да");
  } else {
    print("нет");
  }

//5
  int num = 4;
  if (num == 1) {
    print('зима');
  } else if (num == 2) {
    print('лето');
  } else if (num == 3) {
    print('осень');
  } else if (num == 4) {
    print('весна');
  } else {
    print('введите число от 1 до 4');
  }

//6
  int aa = 1;
  if (aa < 0) {
    print("верно");
  } else {
    print("неверно");
  }

  int aaa = 0;
  if (aaa < 0) {
    print("верно");
  } else {
    print("неверно");
  }

  int aaaa = -3;
  if (aaaa < 0) {
    print("верно");
  } else {
    print("неверно");
  }

//7
  String bb = "123142";
  List<String> a2 = bb.split('');
  int sumOne = int.parse(a2[0]) + int.parse(a2[1]) + int.parse(a2[2]);
  int sumTwo = int.parse(a2[3]) + int.parse(a2[4]) + int.parse(a2[5]);
  if (sumOne == sumTwo) {
    print('сумма первых трех цифр равняется сумме вторых трех цифр');
  } else {
    print('сумма первых трех sцифр НЕ равняется сумме вторых трех цифр');
  }

//8
  String traffic = "red";
  if (traffic == "red") {
    print("стоять");
  } else if (traffic == "green") {
    print("идите");
  } else if (traffic == "yellow") {
    print("подождите");
  }
}
