import 'package:flutter/material.dart';

class TSocialbuttons extends StatelessWidget {
  const TSocialbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/7123025_logo_google_g_icon.png'),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: 24,
              width: 24,
              image: AssetImage('assets/images/7123025_logo_google_g_icon.png'),
            ),
          ),
        ),
      ],
    );
  }
}
