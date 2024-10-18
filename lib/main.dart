import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta/Screens/login_screen/login_screen.dart';
import 'package:insta/utils/colours.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyAaJljH3LX_A26f9MmlQyV1pz4KCXP6uwU',
        appId: '1:945841877470:web:b93168c21d236e7c50ed4f',
        messagingSenderId: "945841877470",
        projectId: "insta-f6ce0",
        storageBucket: "insta-f6ce0.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
      home: LoginScreen(),
    );
  }
}
