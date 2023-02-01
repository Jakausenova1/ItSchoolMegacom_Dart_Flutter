import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text(
            "First Screen Of My Apl",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
          Pyramid(mainAxisAlignment: MainAxisAlignment.start),
          Pyramid(mainAxisAlignment: MainAxisAlignment.center),
          Pyramid(mainAxisAlignment: MainAxisAlignment.end),
        ]),
      ),
    );
  }
}

class Pyramid extends StatelessWidget {
  const Pyramid({
    Key? key,
    required this.mainAxisAlignment,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 10, color: Colors.white),
            boxShadow: const [
              BoxShadow(
                offset: Offset(4, 8),
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.red,
              ),
            ],
          ),
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.yellow,
          child: const Center(
            child: Text("2"),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          color: Colors.green,
          child: const Center(
            child: Text("3"),
          ),
        ),
      ],
    );
  }
}
