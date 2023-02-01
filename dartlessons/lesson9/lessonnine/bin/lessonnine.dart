void main() {
  taskOne();
  taskTwo();
}

taskOne() {
  Phone first = Phone(number: "0500500500", model: "iPhone", weight: 0.2);
  Phone second = Phone(number: "0500600600", model: "Samsung", weight: 0.3);
  Phone third = Phone(number: "0500700700", model: "Mi", weight: 0.4);
  (first.receiveParametres());
  (second.receiveParametres());
  (third.receiveParametres());
  print(first.getNumber());
  print(second.getNumber());
  print(third.getNumber());
  (first.receiveCall("Aibek"));
  (first.sendMessage("00000"));
}

class Phone {
  String number;
  String model;
  double weight;

  receiveParametres() {
    print("$number, $model, $weight");
  }

  receiveCall(String name) {
    print("звонит $name");
  }

  getNumber() {
    return number;
  }

  sendMessage(String send) {
    print("сообщение будет отправлено на $send");
  }

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });
}

taskTwo() {
  Reader jaka = Reader(
    fio: "Usenova Jaka",
    libraryCardNumber: "123",
    faculty: "Law",
    dateOfBirth: "30.03.1999",
    number: "0501300399",
  );
  (jaka.takeBook(5));
  (jaka.takeBook2(["География", "Литра", "Матем", "Физика", "Англ"]));
  (jaka.returnBook(5));
  (jaka.returnBook2(["География", "Литра", "Матем", "Физика", "Англ"]));
}

class Reader {
  String fio;
  String libraryCardNumber;
  String faculty;
  String dateOfBirth;
  String number;

  takeBook(int countOfBooks) {
    print("$fio взял(а) $countOfBooks книг(и)");
  }

  takeBook2(List namesOfBooks) {
    print("$fio взял(а) книги: $namesOfBooks");
  }

  returnBook(int countOfReturns) {
    print("$fio вернул(а) $countOfReturns книг(и)");
  }

  returnBook2(List namesOfReturns) {
    print("$fio вернул(а) книги: $namesOfReturns");
  }

  Reader({
    required this.fio,
    required this.libraryCardNumber,
    required this.faculty,
    required this.dateOfBirth,
    required this.number,
  });
}
