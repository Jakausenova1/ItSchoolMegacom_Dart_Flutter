import 'dart:io';
import 'dart:math';

void main() {
  String ans = "";
  while (ans != "выход") {
    print("Выберите режим");
    print("Комп == 1");
    print("Пользователь == 2");
    print("Дуэль, первым начинает комп == 3");
    ans = stdin.readLineSync()!;
    if (ans == "1") {
      comp();
    } else if (ans == "2") {
      gamer();
    } else if (ans == "3") {
      duel();
    }
  }
}

void comp() {
  String ans = "";
  int min = 0;
  int max = 100;
  int count = 1;
  int mid = ((max + min) / 2).round();
  while (ans != "yes") {
    print("ваше число $mid?");
    ans = stdin.readLineSync()!;

    if (ans == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
      count++;

      print(" ваше число $mid?");
    } else if (ans == "greater") {
      min = mid;
      mid = ((max + min) / 2).round();
      count++;
    } else if (ans == "yes") {
      print("конец игры");
    } else {
      print("Вы ввели некор данные, введите less/greater");
      ans = stdin.readLineSync()!;
    }
  }
  print("комп угадал за $count ходов");
  print(" твое число $mid!");
}

//2 round
void gamer() {
  int counter = 1;

  print("Угадай число)");
  int randomNumber = Random().nextInt(100);

  int ansNumber = int.parse(stdin.readLineSync()!);
  while (ansNumber != randomNumber) {
    if (ansNumber > randomNumber) {
      print("less");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else if (ansNumber < randomNumber) {
      print("greater");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else {
      print("Вы ввели некор данные, введите less/greaterе");
      ansNumber = int.parse(stdin.readLineSync()!);
    }
  }
  print("конец игры, комп загадал $randomNumber");
  print("пользователь угадал за $counter шагов");
}

//3
void duel() {
  int min = 0;
  int max = 100;
  String ans = "";
  int count = 1;
  int counter = 1;
  int mid = ((max + min) / 2).round();

  while (ans != "yes" && count < 3) {
    print("ваше число $mid?");
    ans = stdin.readLineSync()!;

    if (ans == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
      count++;
      print(" ваше число $mid?");
    } else if (ans == "greater") {
      min = mid;
      mid = ((max + min) / 2).round();
      count++;
    } else if (ans == "yes") {
      print("конец игры");
    } else {
      print("Вы ввели некор данные, введите less/greater");
      ans = stdin.readLineSync()!;
    }
  }
  print("было $count хода");
  print("Очередь пользователя, угадай число");
  int randomNumber = Random().nextInt(100);
  int ansNumber = int.parse(stdin.readLineSync()!);
  while (ansNumber != randomNumber && counter < 3) {
    if (ansNumber > randomNumber) {
      print("less");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else if (ansNumber < randomNumber) {
      print("greater");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else {
      print("Вы ввели некор данные, введите less/greater");
      ansNumber = int.parse(stdin.readLineSync()!);
    }
  }
  print("конец игры, комп загадал $randomNumber");

  if (count < counter) {
    print("$count:$counter, победил комп");
  } else if (count == counter) {
    print("$count:$counter, ничья");
  } else if (count > counter) {
    print("$count:$counter, победил пользователь");
  }
}
