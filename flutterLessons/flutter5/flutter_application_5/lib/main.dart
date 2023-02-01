import 'package:flutter/material.dart';

import 'assets/app_text_style.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewWidget(
                  onPressed: () {},
                  onTap: () {},
                  level: 'Beginner',
                  duration: '0-6',
                  text: 'months'),
              const SizedBox(width: 15),
              NewWidget(
                  onPressed: () {},
                  onTap: () {},
                  level: 'Intermediate',
                  duration: '6-18',
                  text: 'months'),
              const SizedBox(width: 15),
              NewWidget(
                  onPressed: () {},
                  onTap: () {},
                  level: 'Advanced',
                  duration: '18+',
                  text: 'months'),
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
  final String level;
  final String duration;
  final String text;
  final Function() onPressed;
  final Function() onTap;

  const NewWidget({
    Key? key,
    required this.level,
    required this.duration,
    required this.text,
    required this.onPressed,
    required this.onTap,
  }) : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

bool isChoised = false;

Color choisedColor() {
  if (isChoised) {
    return Colors.green;
  } else {
    return Colors.white;
  }
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    Color borderColor = choisedColor();

    return GestureDetector(
      onTap: () {
        widget.onTap;
      },
      onTapUp: (_) {
        isChoised = !isChoised;
        borderColor = choisedColor();
        setState(() {});
      },
      onTapDown: (_) {
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.level,
                style: AppTextStyles.w600s12.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                widget.duration,
                style: AppTextStyles.w600s24.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.text,
                style: AppTextStyles.w400s12.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
