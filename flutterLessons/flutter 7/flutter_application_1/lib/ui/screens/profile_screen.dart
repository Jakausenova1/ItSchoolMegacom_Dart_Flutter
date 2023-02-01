import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        title: Text("Профиль"),
      ),
    );
  }
}
