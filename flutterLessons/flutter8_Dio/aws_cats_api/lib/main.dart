import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cat_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CatsModel(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CatsModel>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.network(vm.image),
            ElevatedButton(
              onPressed: () {
                vm.getCatsPhoto();
              },
              child: Text("Press"),
            ),
          ]),
        ),
      ),
    );
  }
}
