import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/app_colors.dart';
import 'package:flutter_application_1/assets/app_text_styles.dart';
import 'package:flutter_application_1/assets/app_assets.dart';

import 'third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
                "Welcome Onbord!",
                style: AppTextStyles.w500s24
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 48,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Lets help you meet up your best tenant \nor landlord",
                  style: AppTextStyles.w500s16
                      .copyWith(color: AppColors.welcomePageTextLittle),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Log in or sign up",
                style: AppTextStyles.w500s18
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(width: 305, height: 48, child: TextFieldWidget()),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                width: 305,
                height: 48,
                child: Button(
                  text: 'Continue',
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "or",
                style: AppTextStyles.w500s18
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        AppAssets.googleImage,
                        width: 40,
                        height: 40,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    IconButton(
                      icon: Image.asset(
                        AppAssets.moreImage,
                        width: 40,
                        height: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThirdPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                '''By continuing, you agree to our
Terms of Service Privacy Policy
Content Policy''',
                textAlign: TextAlign.center,
                style: AppTextStyles.w500s16
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: ("Enter your phone number"),
        labelStyle: AppTextStyles.w500s18,
        border: OutlineInputBorder(
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
