import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import 'method_email_screen/method_email_getcode.dart';
import 'method_phone_screen/method_phone_getcode.dart';

class ForgotPasswordMethod extends StatelessWidget {
  const ForgotPasswordMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 90, left: 10, right: 5),
              child: Center(
                child: Text(
                EcoTexts.cvmHeader,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
            const SizedBox(height: 50),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MethodEmail()),
                      );
                    },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                  ),
                    child: const Text(
                    EcoTexts.cvmBtn1,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MethodPhone()),);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                  ),
                  child: const Text(
                   ' EcoTexts.cvmBtn2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

