import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../utils/constants/text_strings.dart';
import '../../authentication/profile_screen/update_profile_details_screen/update_profile_form.dart';
import 'about_us_screen/about_us_screen.dart';
import 'change_password_screen/change_password_screen.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  _image != null
                      ? CircleAvatar(
                    radius: 100,
                    backgroundImage: _image != null
                        ? MemoryImage(_image!)
                        : null,
                  )
                      : const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.lightGreenAccent,
                  ),
                  Positioned(
                    bottom: -8,
                    left: 130,
                    child: IconButton(
                      onPressed: () {
                        showImagePickerOption(context);
                      },
                      icon: const Icon(
                        Icons.add_a_photo,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateProfileDetails(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.lightGreenAccent),
                  ),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified_user, // Replace with the desired icon
                          size: 24, // Adjust the size of the icon as needed
                        ),
                        SizedBox(width: 55), // Adjust the spacing between the icon and text
                        Text(
                          EcoTexts.pfmBtn1,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangePasswordMain(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.lightGreenAccent),
                  ),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.key, // Replace with the desired icon
                          size: 24, // Adjust the size of the icon as needed
                        ),
                        SizedBox(width: 55), // Adjust the spacing between the icon and text
                        Text(
                          EcoTexts.pfmBtn2,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutUsDetails(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.lightGreenAccent),
                  ),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu_book, // Replace with the desired icon
                          size: 24, // Adjust the size of the icon as needed
                        ),
                        SizedBox(width: 55), // Adjust the spacing between the icon and text
                        Text(
                          EcoTexts.pfmBtn3,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirmation'),
                            content: const Text("Do you want to Exit?"),
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
                  style: ButtonStyle(
                    overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.lightGreenAccent),
                  ),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout, // Replace with the desired icon
                          size: 24, // Adjust the size of the icon as needed
                        ),
                        SizedBox(width: 55), // Adjust the spacing between the icon and text
                        Text(
                          EcoTexts.pfmBtn4,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.lightGreen,
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery")
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text("Camera")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Gallery
  Future<void> _pickImageFromGallery() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return;
    final File imageFile = File(pickedImage.path);
    final Uint8List bytes = await imageFile.readAsBytes();
    setState(() {
      selectedImage = imageFile;
      _image = bytes;
    });
    Navigator.of(context).pop();
  }

  // Camera
  Future<void> _pickImageFromCamera() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage == null) return;
    final File imageFile = File(pickedImage.path);
    final Uint8List bytes = await imageFile.readAsBytes();
    setState(() {
      selectedImage = imageFile;
      _image = bytes;
    });
    Navigator.of(context).pop();
  }
}
