import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../method_phone_screen/verify_getcode_phone.dart';

class MethodEmail extends StatelessWidget {
  const MethodEmail({super.key});

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
                  EcoTexts.megHeader,
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
                      Icons.email_outlined,
                    ),
                    labelText: 'Enter your email address(abc@ooo.com)',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyGetCode()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  TImages.ecoIcon,
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
