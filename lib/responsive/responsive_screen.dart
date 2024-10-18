import 'package:flutter/material.dart';
import 'package:insta/utils/dimention.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > webScreenSize) {
          //web screen
          return webScreenLayout;
        }
        //mobile screen
        return mobileScreenLayout;
      },
    );
  }
}
