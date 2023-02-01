import 'dart:math';

void main() {
  int finger = Random().nextInt(5);
  print(finger);

  switch (finger) {
    case 1:
      print("bolshoy");
      break;

    case 2:
      print("ukaz");
      break;

    case 3:
      print("sred");
      break;

    case 4:
      print("bezym");
      break;

    case 5:
      print("miz");
      break;

    default:
      print("drygie");
      break;
  }

  //do while
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);
}
