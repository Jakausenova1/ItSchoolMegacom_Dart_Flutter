import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        body: Padding(
          padding: const EdgeInsets.only(top: 370, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NewWidget(
                  onPressed: () {},
                  icon: Icons.calculate_outlined,
                  title: 'Current Weight',
                  text: '--- kgs'),
              const SizedBox(height: 10),
              NewWidget(
                  onPressed: () {},
                  icon: Icons.calculate_outlined,
                  title: 'Target Weight',
                  text: '--- kgs'),
              const SizedBox(height: 10),
              NewWidget(
                  onPressed: () {},
                  icon: Icons.height_sharp,
                  title: 'Height',
                  text: '--- cms'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class NewWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String text;
  final Function() onPressed;

  const NewWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  double blurRadius = 15;
  double spreadRadius = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        spreadRadius = 4;
        blurRadius = 15;
        setState(() {});
      },
      onTapDown: (_) {
        blurRadius = 0;
        spreadRadius = 0;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: 315,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: spreadRadius,
                blurRadius: blurRadius,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Colors.black,
              ),
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff898A8D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
