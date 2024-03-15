import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../logIn_screen/login_main.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 90),
                child: Text(
                 EcoTexts.fpfHeader,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  TImages.ecoIcon,
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    labelText: 'Enter new password',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    labelText: 'confirm new password',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  EcoTexts.fpfBtn1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
