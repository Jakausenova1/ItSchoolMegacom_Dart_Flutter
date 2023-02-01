import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/app_assets.dart';
import 'package:flutter_application_1/assets/app_colors.dart';
import 'package:flutter_application_1/assets/app_text_styles.dart';

import 'second_page.dart';

void main() {
  runApp(const MaterialApp(home: WelcomePage()));
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
              Image.asset(
                AppAssets.welcomePage,
                width: 173,
                height: 275,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Choose Your ",
                    style: AppTextStyles.w700s24
                        .copyWith(color: AppColors.welcomePageTextColor),
                    children: [
                      TextSpan(
                        text: "BEST ",
                        style: AppTextStyles.w700s24
                            .copyWith(color: AppColors.welcomePageTextRed),
                      ),
                      const TextSpan(text: "& "),
                      TextSpan(
                        text: "SMART",
                        style: AppTextStyles.w700s24
                            .copyWith(color: AppColors.welcomePageTextPurple),
                      ),
                      const TextSpan(text: "\nHouse"),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "I am a",
                style: AppTextStyles.w400s20
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 10.5,
              ),
              const SizedBox(
                width: 305,
                height: 48,
                child: Button(text: 'Tenant'),
              ),
              const SizedBox(
                height: 10.5,
              ),
              Text(
                "I am a",
                style: AppTextStyles.w400s20
                    .copyWith(color: AppColors.welcomePageTextLittle),
              ),
              const SizedBox(
                height: 10.5,
              ),
              const SizedBox(
                width: 305,
                height: 48,
                child: Button(text: 'Landlord'),
              ),
            ],
          ),
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
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
