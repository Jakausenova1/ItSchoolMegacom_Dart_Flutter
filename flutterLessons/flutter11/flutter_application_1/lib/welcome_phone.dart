import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/app_fonts.dart';
import 'package:flutter_application_1/assets/app_images.dart';

class WelcomePhone extends StatelessWidget {
  const WelcomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.bg),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 84),
            child: RotatedBox(
              quarterTurns: 4,
              child: Image.asset(
                AppImages.circle,
                width: 215,
                height: 215,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 84, top: 470),
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset(
                AppImages.circle,
                width: 284,
                height: 284,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 185),
            child: Container(
              width: 428,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white.withOpacity(0.35),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text("Welcome",
                      style: AppFonts.w600s25.copyWith(color: Colors.white)),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(hintText: "dd"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
