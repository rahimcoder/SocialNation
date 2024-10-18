import 'package:flutter/material.dart';
import 'package:insta/Screens/login_screen/components/size_config.dart';

import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Body(),
    );
  }
}
