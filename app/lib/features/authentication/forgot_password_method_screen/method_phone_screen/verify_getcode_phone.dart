import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../forgot_password_main_form.dart';

class VerifyGetCode extends StatelessWidget {
  const VerifyGetCode({super.key});

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
                 EcoTexts.evgHeader,
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
                      Icons.panorama_fish_eye_outlined,
                    ),
                    labelText: 'Enter get code(******)',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPasswordForm()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                 EcoTexts.evgBtn1,
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
