import 'dart:io';

import 'dart:math';

void main() {
  taskOne();
  taskTwo();
  taskThree();
  taskFour();
  taskFive();
  taskSix();
}

taskOne() {
  print("Напишите год");
  int ans = int.parse(stdin.readLineSync()!);
  if (ans % 4 == 0 && ans % 100 != 0 || ans % 400 == 0) {
    print("Високосный год 366 дней");
  } else {
    print("невисокосный год 365 дней");
  }
}

taskTwo() {
  print("Напишите число");
  int ans = int.parse(stdin.readLineSync()!);
  while (ans != 1) {
    if (ans % 2 == 0) {
      ans = (ans / 2).round();
    } else if (ans % 2 != 0) {
      ans = ((ans * 3 + 1) / 2).round();
    }
    print(ans);
  }
}

taskThree() {
  print("Напишите число");
  int ans = int.parse(stdin.readLineSync()!);
  List chetnye = [];
  List nechetnye = [];
  if (ans % 2 == 0) {
    chetnye.add(ans);
  } else if (ans % 2 != 0) {
    nechetnye.add(ans);
  }
  print("четные: $chetnye , нечетные $nechetnye ");
}

taskFour() {
  List<int> numbers = [];
  for (int j = 1; j < 10000; j++) {
    int summ = 0;
    for (int i = j; i < j; i++) {
      if (j % i == 0) {
        summ += i;
      }
    }
    if (j == summ) {
      numbers.add(j);
    }
  }
  print(numbers);
}

taskFive() {
  List<Team> Barselona = [];
  List<Team> ReadMadrid = [];
  for (int i = 0; i < 1; i++) {
    Barselona.add(Vratar(name: 'барселонский вратарь'));
    ReadMadrid.add(Vratar(name: 'реалмадридовский вратарь'));
  }
  for (int i = 0; i < 4; i++) {
    Barselona.add(Zashitnik(name: 'барселонский защитник'));
    ReadMadrid.add(Zashitnik(name: 'реалмадридовский защитник'));
  }
  for (int i = 0; i < 4; i++) {
    Barselona.add(Poluzashitnik(name: 'барселонский полузащитник'));
    ReadMadrid.add(Poluzashitnik(name: 'реалмадридовский полузащитник'));
  }
  for (int i = 0; i < 2; i++) {
    Barselona.add(Napadaushyi(name: 'барселонский нападающий'));
    ReadMadrid.add(Napadaushyi(name: 'реалмадридовский нападающий'));
  }
  int teamnum = Random().nextInt(11 - 0);
  print(teamnum);
  print("команда Barselona: ${Barselona[teamnum].name}");
  teamnum = Random().nextInt(11 - 0);
  print(teamnum);
  print("команда ReadMadrid: ${ReadMadrid[teamnum].name}");
}

class Team {
  String name;
  Team({required this.name});
}

class Vratar extends Team {
  Vratar({required String name}) : super(name: name);
}

class Zashitnik extends Team {
  Zashitnik({required String name}) : super(name: name);
}

class Poluzashitnik extends Team {
  Poluzashitnik({required String name}) : super(name: name);
}

class Napadaushyi extends Team {
  Napadaushyi({required String name}) : super(name: name);
}

taskSix() {
  List<String> lineOne = ['  ', '  ', '  '];
  List<String> lineTwo = ['  ', '  ', '  '];
  List<String> lineThree = ['  ', '  ', '  '];
  int counter = 0;
  while (counter != 9) {
    print("выберите массив");
    int listt = int.parse(stdin.readLineSync()!);
    print("выберите элемент");
    int ell = int.parse(stdin.readLineSync()!);

    if (listt == 1 && ell == 1) {
      lineOne.removeAt(0);
      lineOne.insert(0, stdin.readLineSync()!);
      counter++;
    } else if (listt == 1 && ell == 2) {
      lineOne.removeAt(1);
      lineOne.insert(1, stdin.readLineSync()!);
      counter++;
    } else if (listt == 1 && ell == 3) {
      lineOne.removeAt(2);
      lineOne.insert(2, stdin.readLineSync()!);
      counter++;
    } else if (listt == 2 && ell == 1) {
      lineTwo.removeAt(0);
      lineTwo.insert(0, stdin.readLineSync()!);
      counter++;
    } else if (listt == 2 && ell == 2) {
      lineTwo.removeAt(1);
      lineTwo.insert(1, stdin.readLineSync()!);
      counter++;
    } else if (listt == 2 && ell == 3) {
      lineTwo.removeAt(2);
      lineTwo.insert(2, stdin.readLineSync()!);
      counter++;
    } else if (listt == 3 && ell == 1) {
      lineThree.removeAt(0);
      lineThree.insert(0, stdin.readLineSync()!);
      counter++;
    } else if (listt == 3 && ell == 2) {
      lineThree.removeAt(1);
      lineThree.insert(1, stdin.readLineSync()!);
      counter++;
    } else if (listt == 3 && ell == 3) {
      lineThree.removeAt(2);
      lineThree.insert(2, stdin.readLineSync()!);
      counter++;
    }
    print(lineOne);
    print(lineTwo);
    print(lineThree);
  }
}



// pascal 
// var a : array [1..3,1..3] of Char;
// var winner := #0;
// var ch := 'X';
// var step := 0;
// repeat
//   var(r,c) := ReadInteger2;
//   if a[r,c] = #0 then a[r,c] := ch else begin 'Повторный ход'.Print; Halt; end;
//   if (a[1,1] = a[1,2]) and (a[1,2] = a[1,3]) then winner := a[1,1];
//   if (a[2,1] = a[2,2]) and (a[2,2] = a[2,3]) then winner := a[2,1];
//   if (a[3,1] = a[3,2]) and (a[3,2] = a[3,3]) then winner := a[3,1];
//   if (a[1,1] = a[2,1]) and (a[2,1] = a[3,1]) then winner := a[1,1];
//   if (a[1,2] = a[2,2]) and (a[2,2] = a[3,2]) then winner := a[1,2];
//   if (a[1,3] = a[2,3]) and (a[2,3] = a[3,3]) then winner := a[1,3];
//   if (a[1,1] = a[2,2]) and (a[2,2] = a[3,3]) then winner := a[1,1];
//   if (a[1,3] = a[2,2]) and (a[2,2] = a[3,1]) then winner := a[1,3];
//   ch := ch = 'X' ? 'O' : 'X';
//   step += 1;
// until (winner <> #0) or (step = 9);
// if winner = #0 then 'Ничья'.Print else $'Победил {winner}'.Print;