void main() {
  print(taskOne(5)); //1
  print(taskTwo(2, 6)); //2
  print(taskThree(3, 5, 2)); //3
  print(taskFour(5)); //4
  print(taskFive([1, 2, 3, 4, 5])); //5
  print(taskSix(true, 6)); //6
  print(taskSeven(-3)); //7
}

//1
int taskOne(int a) {
  return a * a;
}

//2
int taskTwo(int a, int b) {
  return a + b;
}

//3
double taskThree(int a, int b, int c) {
  return (a + b) / c;
}

//4
int taskFour(int a) {
  return a * 60;
}

//5
int taskFive(List a) {
  return a[0];
}

//6
String taskSix(bool a, int b) {
  if (a == true) {
    return ("Переменная имеет значение $b");
  } else {
    return ("o");
  }
}

//7
String taskSeven(int num) {
  String result = "false";
  if (num <= 0) {
    result = "true";
  }
  return result;
}
