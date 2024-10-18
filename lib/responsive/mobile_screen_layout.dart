import 'package:flutter/material.dart';
import 'package:insta/Screens/login_screen/login_screen.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoginScreen(),
      ),
    );
  }
}
