import 'package:flutter/material.dart';

import 'assets/second_page.dart';
import 'assets/third_page.dart';
import 'assets/welcome_page.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (BuildContext context) => const WelcomePage(),
    '/second': (BuildContext context) => const SecondPage(),
    '/third': (BuildContext context) => const ThirdPage(),
  }));
}
