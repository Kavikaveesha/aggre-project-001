import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../method_email_screen/verify_getcode_email.dart';

class MethodPhone extends StatelessWidget {
  const MethodPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 90, left: 25),
                child: Text(
                 EcoTexts.mpnHeader,
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
                    labelText: 'Enter phone number(0*******)',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerifyGetCode()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  EcoTexts.mpnBtn1,
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
