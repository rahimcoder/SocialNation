import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insta/Screens/login_screen/components/size_config.dart';
import 'package:insta/Screens/login_screen/components/tabs.dart';
import 'package:insta/Screens/signup_dialog.dart';
import 'package:insta/Widgets/text_form_field.dart';
import 'package:insta/sizes.dart';

import 'land.dart';
import 'sun.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isFullSun = false;
  bool isDayMood = true;
  Duration _duration = Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isFullSun = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
  }

  void changeMood(int activeTabNum) {
    if (activeTabNum == 0) {
      setState(() {
        isDayMood = true;
      });
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          isFullSun = true;
        });
      });
    } else {
      setState(() {
        isFullSun = false;
      });
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          isDayMood = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
      // if (isFullSun) Color(0xFFFF9D80),
    ];
    var darkBgColors = [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    return AnimatedContainer(
      duration: _duration,
      curve: Curves.easeInOut,
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDayMood ? lightBgColors : darkBgColors,
        ),
      ),
      child: Stack(
        children: [
          Sun(
            duration: _duration,
            isFullSun: isFullSun,
            key: null,
          ),
          Land(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(of: 50),
                  Tabs(
                    press: (value) {
                      changeMood(value);
                    },
                  ),
                  VerticalSpacing(),
                  if (isDayMood)
                    Text(
                      "Wishing You Bright Beginnings...",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  if (isDayMood == false)
                    Text(
                      "Whispers of Midnight Adventure...",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  VerticalSpacing(of: 50),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      "Enter your Informations below",
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TTextField(
                    labelText: 'Email',
                    textEditingController: _emailController,
                    hintText: 'Enter Your Email',
                    textInputType: TextInputType.emailAddress,
                    icon: Icon(Icons.email),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  TTextField(
                    labelText: 'Password',
                    textEditingController: _passwordController,
                    hintText: 'Enter Your Password',
                    textInputType: TextInputType.text,
                    isPass: true,
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  SizedBox(
                    width: double.infinity,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: isDayMood
                            ? const Color.fromARGB(255, 217, 0, 255)
                            : Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              isDayMood ? Colors.black : Colors.white,
                          backgroundColor: Colors.transparent,
                          shadowColor: isDayMood
                              ? Colors.purpleAccent.shade100
                              : Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 25,
                        ),
                        child: Text('Login'),
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  SignupDialog(),
                  Flexible(child: Container(), flex: 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
