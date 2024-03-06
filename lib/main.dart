import 'package:eventmainapp/common/widgets/splash_screen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/signup_screen.dart';
import 'package:eventmainapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: EAppTheme.mainTheme,
      home: const SplashScreen(
        child: SplashScreen(
          child: SignUpPage(),
        ),
      ),
    );
  }
}
