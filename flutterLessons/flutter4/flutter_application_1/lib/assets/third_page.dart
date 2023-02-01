import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/app_colors.dart';
import 'package:flutter_application_1/assets/app_text_styles.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.welcomePageTextWhite,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SIGN UP",
                style: AppTextStyles.w500s24
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Just entry your personal details",
                  style: AppTextStyles.w500s16
                      .copyWith(color: AppColors.welcomePageTextLittle),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                  width: 305,
                  height: 48,
                  child: TextFieldWidget(textField: "Enter your full name")),
              const SizedBox29(),
              const SizedBox(
                  width: 305,
                  height: 48,
                  child: TextFieldWidget(textField: "Enter your email")),
              const SizedBox29(),
              const SizedBox(
                  width: 305,
                  height: 48,
                  child: TextFieldWidget(textField: "Enter  passowrd ")),
              const SizedBox29(),
              const SizedBox(
                  width: 305,
                  height: 48,
                  child: TextFieldWidget(textField: "Confirm password")),
              const SizedBox(
                height: 58,
              ),
              const SizedBox(
                width: 305,
                height: 48,
                child: Button(
                  text: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SizedBox29 extends StatelessWidget {
  const SizedBox29({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 29,
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String textField;
  const TextFieldWidget({
    required this.textField,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: textField,
        labelStyle: AppTextStyles.w500s18,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  const Button({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: AppColors.welcomePageTextButton,
      ),
      onPressed: () {
        Navigator.pop(
          context,
        );
      },
      child: Text(
        text,
        style: AppTextStyles.w800s24
            .copyWith(color: AppColors.welcomePageTextWhite),
      ),
    );
  }
}
