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
        appBar: AppBar(
          title: const Text(
            "Sample App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 600,
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text("image"),
                ],
              ),
            ),
            Container(
                width: 500,
                height: 100,
                color: Colors.green,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.orange,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+"),
                            Text("Add"),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.orange,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+"),
                            Text("Add"),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.orange,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+"),
                            Text("Add"),
                          ]),
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}

