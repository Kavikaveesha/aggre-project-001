import 'package:app/navigation_menu.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../../shop/screens/home_screen/home_page.dart';
import '../forgot_password_method_screen/forgot_password_method.dart';
import '../register_screen/sign_up_main.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 150),
              child: Center(
                child: Text(
                 EcoTexts.welbackHeader,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
                    Icons.email,
                  ),
                  labelText: 'Enter your email',
                  )
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    labelText: 'Enter your password',
                  )
              ),
            ),
            const SizedBox(height: 20),
             TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPasswordMethod()),
                  );
                },
                child: const Text(
                 ' EcoTexts.welbackForgotPassword',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue),
                ),
             ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationMenu()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
              ),
              child: const Text(
                'EcoTexts.welbackSignIn',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
             ' EcoTexts.welbackDontHave',
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: const Text(
                 ' EcoTexts.welbackSignUp',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
