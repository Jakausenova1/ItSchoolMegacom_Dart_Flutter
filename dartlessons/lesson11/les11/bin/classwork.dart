import 'dart:io';

void main() {
  taskone();
  taskTwo();
}

void taskone() {
  miniBus n = miniBus(maxSpeed: 3, mileAge: 4, seatingCapacity: 20, color: "");
  print(n.cost());
  print(n.color);
}

class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;
  String color = "white";

  Vehicle({
    required this.maxSpeed,
    required this.mileAge,
    required this.seatingCapacity,
  });

  cost() {
    return (seatingCapacity * 100);
  }
}

class Scooter extends Vehicle {
  Scooter(
      {required int maxSpeed,
      required int mileAge,
      required int seatingCapacity,
      required String color})
      : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: seatingCapacity,
        );
}

class Bus extends Vehicle {
  Bus(
      {required int maxSpeed,
      required int mileAge,
      required int seatingCapacity,
      required String color})
      : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: 50,
        );
}

class miniBus extends Vehicle {
  miniBus(
      {required int maxSpeed,
      required int mileAge,
      required int seatingCapacity,
      required String color})
      : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: 20,
        );

  @override
  cost() {
    return (seatingCapacity * 100) * 0.1 + (seatingCapacity * 100);
  }
}

//2
taskTwo() {
  List<Person> people = [];
  print('enter teachings name');
  people.add(Teacher(name: stdin.readLineSync()!));
  print('enter names of 2 students');
  people.add(Teacher(name: stdin.readLineSync()!));
  people.add(Teacher(name: stdin.readLineSync()!));
  for (int i = 0; i < people.length; i++) {
    print(people[i].name);
  }
}

class Person {
  String name;

  Person({required this.name});
}

class Student extends Person {
  void study() {
    print("$name учится");
  }

  Student({required String name}) : super(name: name);
}

class Teacher extends Person {
  void teach() {
    print("$name объясняет");
  }

  Teacher({required String name}) : super(name: name);
}
