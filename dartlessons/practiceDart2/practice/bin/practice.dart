import 'dart:io';
import 'dart:math';

void main() {
  taskOne();
  taskTwo();
  taskThree();
  taskFour();
  taskFive();
}

taskOne() {
  List numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
  int temp = 0;
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  print(numbers);
}

taskTwo() {
  String a = 'data 48 call 9231dadsad read13 blank0a';
  List b = a.split(' ');
  String long = b[0];
  for (int i = 1; i < b.length; i++) {
    if (long.length < b.length) {
      long = b[i];
    }
  }
  print(long);
}

taskThree() {
  List<String> answers = [
    "Да",
    "Нет",
    "Скорее всего да",
    "Скорее всего нет",
    "Возможно",
    "Имеются перспективы",
    "Вопрос задан неверно"
  ];
  print("напишите вопрос");
  stdin.readLineSync()!;
  int random = Random().nextInt(answers.length);
  print(answers[random]);
}

taskFour() {
  List<Soldat> army = [];
  List<Soldat> zvaniya = [
    Ryadovoi(),
    Efreitor(),
    Praporshik(),
    StarwiyPraporshik(),
    Kapitan(),
    General()
  ];
  for (int i = 0; i < 100; i++) {
    int random = Random().nextInt(6 - 0);
    army.add(zvaniya[random]);
  }
  List<Soldat> soldaty = [];
  List<Soldat> praporshiki = [];
  List<Soldat> oficery = [];
  army.forEach((element) {
    if (element.value < 3) {
      soldaty.add(element);
    } else if (element.value > 4 && element.value < 7) {
      praporshiki.add(element);
    } else if (element.value > 9) {
      oficery.add(element);
    }
  });
  print('Soldaty ${soldaty.length}');
  print('Praporshiki ${praporshiki.length}');
  print('Oficery ${oficery.length}');
}

class Soldat {
  int value;
  Soldat({this.value = 0});
}

class Ryadovoi extends Soldat {
  Ryadovoi() : super(value: 1);
}

class Efreitor extends Soldat {
  Efreitor() : super(value: 2);
}

class Praporshik extends Soldat {
  Praporshik() : super(value: 5);
}

class StarwiyPraporshik extends Soldat {
  StarwiyPraporshik() : super(value: 6);
}

class Kapitan extends Soldat {
  Kapitan() : super(value: 10);
}

class General extends Soldat {
  General() : super(value: 13);
}

taskFive() {
  int random = Random().nextInt(100 - 0);
  List<Animal> skot = [];
  for (int i = 0; i < random; i++) {
    int randomAnimal = Random().nextInt(3 - 0);
    if (randomAnimal == 0) {
      skot.add(Sheep());
    } else if (randomAnimal == 1) {
      skot.add(Horse());
    } else {
      skot.add(Cow());
    }
  }
  print(skot.length);
  for (int i = 0; i < skot.length; i++) {
    print(skot[i].runtimeType);
  }
  double totapPrice = 0;
  int totalMeat = 0;
  skot.forEach((element) {
    totapPrice += element.price;
    totalMeat += element.weight;
  });

  print('Total price is $totapPrice som');
  print('Total meat is $totalMeat kg');
}

class Animal {
  int weight;
  double price;
  Animal({
    required this.weight,
    required this.price,
  });
}

class Sheep extends Animal {
  Sheep() : super(weight: 20, price: 15000);
}

class Horse extends Animal {
  Horse() : super(weight: 100, price: 100000);
}

class Cow extends Animal {
  Cow() : super(weight: 150, price: 150000);
}
