import 'dart:io';
import 'dart:math';

void main() {
  print('нажмите y чтобы вышло ваше число');
  String? b = stdin.readLineSync();
  int playerScore = 0;
  int compScore = 0;
  List<String> dice = [
    '''
      _____
     |  1  |
     |_____| ''',
    '''
      _____
     |  2  |
     |_____| ''',
    '''
      _____
     |  3  |
     |_____| ''',
    '''
      _____
     |  4  |
     |_____| ''',
    '''
      _____
     |  5  |
     |_____| ''',
    '''
      _____
     |  6  |
     |_____| '''
  ];
  if (b == "y") {
    playerScore += tossDice(dice);
  } else {
    print("игра завершена");
  }
  print('нажмите y чтобы вышло число компьютера');
  String? c = stdin.readLineSync();
  if (c == "y") {
    compScore += tossDice(dice);
  } else {
    print("игра завершена");
  }

  if (playerScore > compScore) {
    print('Player won this round');
  } else {
    print('Computer wont this round');
  }
}

int tossDice(List<String> a) {
  int r = Random().nextInt(6 - 0);
  int r2 = Random().nextInt(6 - 0);
  print(a[r]);
  print(a[r2]);
  return r + r2;
}
