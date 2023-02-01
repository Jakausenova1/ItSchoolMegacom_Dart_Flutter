void main() {
  exampleOne();
  exampleTwo();
}

exampleOne() {
  Cats murzik =
      Cats(age: 12, name: "murzik", family: "cats", color: "green", speed: 4);
  print(murzik.eat("wiskas"));

  Animals animal = Animals(age: 5, name: "animal", family: "family");
  print(animal.eat("meal"));
}

class Animals {
  String name;
  int age;
  String family;

  Animals({required this.name, required this.age, required this.family});

  String eat(String meal) {
    if (meal == "meal") {
      return "predator";
    } else {
      return "travoyd";
    }
  }
}

class Cats extends Animals {
  //наследуется
  String color;
  int speed;

  String voice() {
    return "mew";
  }

  @override
  String eat(String meal) {
    if (meal == "wiskas") {
      return "home";
    } else {
      return "wild";
    }
  }

  Cats(
      {required String name,
      required int age,
      required String family,
      required this.color,
      required this.speed})
      : super(age: age, family: family, name: name);
}

exampleTwo() {
  Developer vasya = Developer(
      age: 25,
      name: "Vasiliy",
      gender: "Male",
      salary: [1000, 2000, 3000, 4000],
      skills: ["dart", "flutter"]);
  Buhgalter olya = Buhgalter(age: 50, name: "Olga", gender: "Famale");
  print(olya.getAverageSalary(vasya.salary));
}

class Human {
  int age;
  String name;
  String gender;

  Human({required this.age, required this.name, required this.gender});
}

class Developer extends Human {
  List<String> skills;
  List<int> salary;

  Developer(
      {required int age,
      required String name,
      required String gender,
      required this.salary,
      required this.skills})
      : super(age: age, name: name, gender: gender);
}

class Buhgalter extends Human {
  Buhgalter({
    required super.age,
    required super.name,
    required super.gender,
  });

  double getAverageSalary(List<int> salary) {
    int summ = 0;
    for (int i = 0; i < salary.length; i++) {
      summ += salary[i];
    }
    return summ / salary.length;
  }
}
