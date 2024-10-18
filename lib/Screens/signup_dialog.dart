import 'package:flutter/material.dart';
import 'package:insta/Widgets/text_form_field.dart';
import 'package:insta/sizes.dart';

class SignupDialog extends StatefulWidget {
  const SignupDialog({super.key});

  @override
  State<SignupDialog> createState() => _SignupDialogState();
}

class _SignupDialogState extends State<SignupDialog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => showGeneralDialog(
          barrierDismissible: true,
          barrierLabel: 'Sign Up',
          context: context,
          pageBuilder: (context, _, __) => Center(
            child: Container(
              height: 640,
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        ' Create your Insta account and share your unique journey!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    TTextField(
                      icon: Icon(Icons.email),
                      hintText: " Enter Email..",
                      labelText: "Email",
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),
                    TTextField(
                      icon: Icon(Icons.remove_red_eye_rounded),
                      hintText: " Enter Password",
                      labelText: "Password",
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),
                    TTextField(
                      icon: Icon(Icons.add_card),
                      hintText: " Enter Bio",
                      labelText: "Bio",
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),
                    TTextField(
                      icon: Icon(Icons.man_4_outlined),
                      hintText: " Enter Username..",
                      labelText: "Username",
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 56),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ))),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
