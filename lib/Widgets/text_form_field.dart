import 'package:flutter/material.dart';

class TTextField extends StatelessWidget {
  const TTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.icon,
      this.isPass = false,
      this.fillColor = Colors.white,
      this.textEditingController,
      this.textInputType});
  final String hintText;
  final String labelText;
  final Icon icon;
  final bool isPass;
  final Color fillColor;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                fillColor: fillColor,
                filled: true, // Ensure the input field is filled with color
                prefixIcon: icon,

                contentPadding: EdgeInsets.symmetric(
                    vertical: 16, horizontal: 12), // Padding inside the field
                labelText: labelText, // Floating label above the input
                labelStyle: TextStyle(
                  color: Colors.black45, // Label color
                  fontSize: 14, // Label size
                ),
                hintStyle: TextStyle(
                  color: Colors.black38, // Hint text color
                  fontSize: 14, // Hint font size
                ),

                // Modern outline border
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      12.0), // Rounded corners for modern look
                  borderSide: BorderSide(
                    color: Colors
                        .grey.shade300, // Light grey color when not focused
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Same rounded corners
                  borderSide: BorderSide(
                    color: Colors.black, // Black border when focused
                    width: 2.0, // Thicker border for focus
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.red, // Red border for errors
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors
                        .redAccent, // Thicker red border when focused with an error
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: textInputType,
              obscureText: isPass, // Sets the keyboard type to email
            ),
          ),
        ],
      ),
    );
  }
}
