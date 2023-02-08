import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.text,
    required this.hintText,
    this.suffix,
    required this.controller,
    required this.maxLine,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  final String text;
  final String hintText;
  final Widget? suffix;
  final TextEditingController controller;
  final int maxLine;
  final String? errorText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      maxLines: maxLine,
      controller: controller,
      decoration: InputDecoration(
          errorText: errorText,
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
