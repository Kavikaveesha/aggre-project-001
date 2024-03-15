import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../logIn_screen/login_main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300, right: 20),
              child: Image.asset(
                TImages.ecoIcon,
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    EcoTexts.splashHeader,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    EcoTexts.splashSubHeader,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
              ),
              child: const Text(
                EcoTexts.splashbutton,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
