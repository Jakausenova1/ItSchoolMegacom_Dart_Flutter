import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.text,
    required this.hintText,
    this.suffix,
    required this.controller,
    required this.maxLine,
  }) : super(key: key);

  final String text;
  final String hintText;
  final Widget? suffix;
  final TextEditingController controller;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          label: Row(
            children: [
              Text(text),
              const Text('*', style: TextStyle(color: Colors.red)),
              const Padding(
                padding: EdgeInsets.all(3.0),
              ),
            ],
          ),
          hintText: hintText,
          suffix: suffix),
    );
  }
}
