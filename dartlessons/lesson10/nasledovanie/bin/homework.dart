void main() {
  taskOne();
  taskSecond();
  taskThird();
}

//1
void taskOne() {
  Tuz tuz = Tuz(color: "red", mast: "kresti");
  print(tuz.color);
}

class Card {
  String color;
  String mast;

  Card({required this.color, required this.mast});
}

class Tuz extends Card {
  Tuz({required super.color, required super.mast});
}

class King extends Card {
  King({required super.color, required super.mast});
}

class Dama extends Card {
  Dama({required super.color, required super.mast});
}

class Valet extends Card {
  Valet({required super.color, required super.mast});
}

//2

void taskSecond() {
  Father misha =
      Father(right: true, eyes: "brown", hair: "brunet", asian: true);
  Son dima = Son(
      right: false,
      eyes: "brown",
      hair: "brown",
      asian: false,
      left: true,
      slavic: true);
  print(dima.asian);
  print(misha.asian);
}

class Father {
  bool right;
  String eyes;
  String hair;
  bool asian;

  Father(
      {required this.right,
      required this.eyes,
      required this.hair,
      required this.asian});
}

class Son extends Father {
  bool left;
  bool slavic;
  Son(
      {required super.right,
      required super.eyes,
      required super.hair,
      required super.asian,
      required this.left,
      required this.slavic});
}

//3
void taskThird() {
  Toyota one = Toyota(
      dvigatel: "JZ",
      kuzov: "железный",
      podveska: "обычная",
      fary: "ксеноновые");
  SecondToyota two = SecondToyota(
      dvigatel: "GR",
      kuzov: "железный",
      podveska: "пневмоподвеска",
      fary: "ксеноновые");
  ThreeToyota three = ThreeToyota(
      dvigatel: "GR",
      kuzov: "из металозаменителя",
      podveska: "пневмоподвеска",
      fary: "лезерные");
}

class Toyota {
  String dvigatel;
  String kuzov;
  String podveska;
  String fary;

  Toyota(
      {required this.dvigatel,
      required this.kuzov,
      required this.podveska,
      required this.fary});
}

class SecondToyota extends Toyota {
  SecondToyota(
      {required super.dvigatel,
      required super.kuzov,
      required super.podveska,
      required super.fary});
}

class ThreeToyota extends Toyota {
  ThreeToyota(
      {required super.dvigatel,
      required super.kuzov,
      required super.podveska,
      required super.fary});
}
