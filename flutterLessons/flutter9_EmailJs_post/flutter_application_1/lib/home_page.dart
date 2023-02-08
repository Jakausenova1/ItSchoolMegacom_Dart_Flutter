import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/assets/app_fonts.dart';
import 'package:flutter_application_1/ui/widgets/name_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  final String templatedID = 'template_py1gz49';
  final String serviceId = 'service_wlyn1a4';
  final String userId = 'jV2OcWdd24lBX50mJ';
  final String token = 'RKwfCwPfHNBOgTJNIPHO9';
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Contact",
                style: AppFonts.w600s32,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Quam duis vitae curabitur \namet, fermentum lorem.",
                textAlign: TextAlign.center,
                style: AppFonts.w400s14,
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 171,
                      height: 46,
                      child: NameWidget(
                        maxLine: 1,
                        text: 'First name',
                        hintText: 'Name',
                        controller: nameController,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 171,
                      height: 46,
                      child: NameWidget(
                        maxLine: 1,
                        text: 'Last name',
                        hintText: 'Name',
                        controller: lastNameController,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 367,
                height: 46,
                child: NameWidget(
                  maxLine: 1,
                  text: 'E-mail',
                  hintText: 'yourmail@gmail.com',
                  controller: emailController,
                  errorText: errorText,
                  onChanged: (val) {
                    if (val.contains('@') && val.isNotEmpty) {
                      errorText = null;
                    } else {
                      errorText = "введите корректные данные";
                    }
                    setState(() {});
                  },
                  suffix: const Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 367,
                height: 46,
                child: NameWidget(
                  maxLine: 1,
                  text: 'Phone',
                  hintText: '(555) 000-0000',
                  controller: phoneController,
                  suffix: const Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 367,
                height: 150,
                child: NameWidget(
                  maxLine: 6,
                  text: 'Message',
                  hintText: 'Your message',
                  controller: messageController,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 60,
                width: 270,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    sendMessage(context: context);
                  },
                  child: const Text("Enter", style: AppFonts.w600s28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> sendMessage({required BuildContext context}) async {
    Dio dio = Dio();
    try {
      final response = await dio.post(
        "https://api.emailjs.com/api/v1.0/email/send",
        data: {
          'service_id': serviceId,
          'template_id': templatedID,
          'user_id': userId,
          'accessToken': token,
          'template_params': {
            'name': nameController.text,
            'lastName': lastNameController.text,
            'email': emailController.text,
            'phone': phoneController.text,
            'message': messageController.text,
          }
        },
      );
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            const Text("Сообщение отправлено!"),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close))
          ],
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
