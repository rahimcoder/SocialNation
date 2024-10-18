import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton(
      {super.key, required this.isDayMood, required this.buttonName});
  final bool isDayMood;
  final String buttonName;
  @override
  State<LoginButton> createState() => _MyWidgetState(isDayMood, buttonName);
}

class _MyWidgetState extends State<LoginButton> {
  _MyWidgetState(this.isDayMood, this.buttonNamee);
  final bool isDayMood;
  final String buttonNamee;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 800),
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
            foregroundColor: isDayMood ? Colors.black : Colors.white,
            backgroundColor: Colors.transparent,
            shadowColor:
                isDayMood ? Colors.purpleAccent.shade100 : Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 25,
          ),
          child: Text(buttonNamee),
        ),
      ),
    );
  }
}
