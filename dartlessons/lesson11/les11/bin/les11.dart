void main() {
  extension();
  two();
  three();
  // four();
}

//1 extension
void extension() {
  String a = "123";
  print(a.toInt().runtimeType);
  List<int> b = [1, 2, 3, 4, 5];

  print(b.average());
}

extension MyInt on String {
  int toInt() {
    return int.parse(this);
  }
}

extension MyList on List<int> {
  double average() {
    int summ = 0;
    for (int i = 0; i < length; i++) {
      summ += this[i];
    }
    return summ / length;
  }
}

//2 многожественное наследование
void two() {
  Tiger vasya = Tiger(name: "12");
  vasya.voice();
}

class Animals {
  String name;
  Animals({required this.name});
  void voice() {
    print('rr');
  }
}

class Cats {
  void voice1() {
    print('may');
  }
}

class CatsFamily {
  void color() {
    print("color");
  }
}

class Tiger extends Animals with Cats, CatsFamily {
  Tiger({required String name}) : super(name: name);
}

//3 абстрактный класс -суть хранение инфы
three() {
  Developer dev =
      Developer(level: "level", age: 2, gender: "gender", name: "name");
  print(dev.name);
}

abstract class Human {
  int age;
  String name;
  String gender;
  Human({required this.name, required this.age, required this.gender});
}

class Developer extends Human {
  String level;

  Developer(
      {required this.level,
      required super.age,
      required super.gender,
      required super.name});
}

//4 имплементация- в наследовании расширяем класс, а в имплеметац реализация класса родителя
// four() {
//   Developer1 dev =
//       Developer1(level: "level", age: 2, gender: "gender", name: "name");
//   print(dev.name);
// }

// class Human1 {
//   int age;
//   String name;
//   String gender;
//   Human1({required this.name, required this.age, required this.gender});
// }

// class Developer1 extends Human1 {
//   String level;

//   Developer1(
//       {required this.level,
//       required super.age,
//       required super.gender,
//       required super.name});
// }
