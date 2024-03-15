

import 'package:flutter/material.dart';

import '../../../authentication/forgot_password_method_screen/forgot_password_method.dart';


class ChangePasswordMain extends StatefulWidget {
  const ChangePasswordMain({super.key});

  @override
  State<ChangePasswordMain> createState() => _ChangePasswordMainState();
}

class _ChangePasswordMainState extends State<ChangePasswordMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 385,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Current Password',
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: 385,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'New Password',
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: 385,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirm New Password',
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPasswordMethod()));
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )
                        ),
                        child: const Text(
                            'Sava Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
