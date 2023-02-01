void main() {
//1
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

//2
  for (int i = 5; i >= 1; i--) {
    print(i);
  }

//3
  for (int i = 1; i < 10; i++) {
    print("1*3= ${i * 3}");
  }

  print(taskFour(6));

//1/1
  for (int i = 10; i <= 20; i++) {
    print(i * i);
  }

  //2/2
}

//4
int taskFour(a) {
  int summ = 1;
  for (int i = 1; i < a; i++) {
    (summ += i);
  }
  return summ;
}
