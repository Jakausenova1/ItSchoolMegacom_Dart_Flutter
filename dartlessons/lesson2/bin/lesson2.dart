void main() {
//задание
//1
  List someInts = [1, 7, 12, 3, 56, 2, 87, 34, 54];
// print (someInts.first);
// print (someInts[4]);
// print (someInts.last);
  print("Первый элемент- ${someInts.first}, посл- ${someInts.last}");
//  //List <int> listOne = [1, 7, 12, 3, 56, 2, 87];
//  int index = Random().nextInt(listOne.length); --интовое значение  import "dart:math"

//2
  List a = [3, 12, 43, 1, 25, 6, 5, 7];
  List b = [55, 11, 23, 56, 78, 1, 9];
  List c = a + b;
  print(c);

//3
  List f = [
    'a',
    'd',
    'F',
    'l',
    'u',
    't',
    't',
    'e',
    'R',
    'y',
    '3',
    'b',
    'h',
    'j'
  ];
  print(f.getRange(2, 9)); //отрезок

//4
  List four = [1, 2, 3, 4, 5, 6, 7];
  print(four.contains(3));
  print(four.first);
  print(four.last);
  print(four.length);

//5
  List fifth = [601, 123, 2, "dart", 45, 95, "dart24", 1];
  print(fifth.contains("dart"));
  print(fifth.contains(951));

//6
  List sixth = ["post", 1, 0, "flutter"];
  String myDart = "Flutter";
  print(sixth.contains(myDart.toLowerCase()));

//7
  List seventh = ["I", "Started", "Learn", "Flutter", "Since", "April"];
  String myFlutter = "";
  myFlutter = seventh.join("*");
  print(myFlutter);

//8
  List eight = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  eight.sort();
  print(eight);
}
