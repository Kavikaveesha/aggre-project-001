import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateProfileDetails extends StatefulWidget {
  const UpdateProfileDetails({super.key});

  @override
  State<UpdateProfileDetails> createState() => _UpdateProfileDetailsState();
}

class _UpdateProfileDetailsState extends State<UpdateProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Your Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 75),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit,
                    ),
                    labelText: 'Enter First name',
                  ),
                ),
              ),

              SizedBox(height: 25),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit,
                    ),
                    labelText: 'Enter Second name',
                  ),
                ),
              ),

              SizedBox(height: 25),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit,
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),

              SizedBox(height: 25),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit,
                    ),
                    labelText: 'Phone Number',
                  ),
                ),
              ),

              SizedBox(height: 25),
              SizedBox(
                width: 385,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit,
                    ),
                    labelText: 'Address',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 25),
                child: Row(
                  children: [
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
                          child: Text(
                              'Reset',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                      ),
                    ),

                    SizedBox(width: 100),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Confirmation'),
                                content: const Text("Do you want to Update?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                        'NO'
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Write code here for "yes" action
                                    },
                                    child: const Text('Yes'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )
                        ),
                        child: Text(
                            'Update Details',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
