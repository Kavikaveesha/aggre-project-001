import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../logIn_screen/login_main.dart';
import '../verify_screen/verify_main_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  EcoTexts.welcomeHeader,
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
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.man,
                  ),
                  labelText: 'Enter First name',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.man,
                  ),
                  labelText: 'Enter Second name',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                  labelText: 'Enter your email',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.mobile_off,
                  ),
                  labelText: 'Enter Phone Number',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.add_reaction,
                  ),
                  labelText: 'Enter Address',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  labelText: 'Create your password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 385,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  labelText: 'Confirm your password',
                ),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VerifyScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
              ),
              child: const Text(
                EcoTexts.welcomeRegister,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              EcoTexts.welcomeAlreadyAccount,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogIn()),
                );
              },
              child: const Text(
                EcoTexts.welcomeSignIn,
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
