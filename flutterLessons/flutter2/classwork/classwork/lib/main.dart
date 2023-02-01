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
        backgroundColor: const Color(0xffF9F9F9),
        body: Padding(
          padding: const EdgeInsets.only(top: 370, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              NewWidget(
                  icon: Icons.calculate_outlined,
                  title: 'Current Weight',
                  text: '--- kgs'),
              NewWidget(
                  icon: Icons.calculate_outlined,
                  title: 'Target Weight',
                  text: '--- kgs'),
              NewWidget(
                  icon: Icons.height_sharp, title: 'Height', text: '--- cms'),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  const NewWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 15,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff898A8D),
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
