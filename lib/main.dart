import 'package:eventmainapp/common/widgets/splash_screen.dart';
import 'package:eventmainapp/firebase_options.dart';
import 'package:eventmainapp/utils/features/authentication/screens/signup_screen.dart';
import 'package:eventmainapp/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      home: SplashScreen(
        child: SplashScreen(
          child: SignUpPage(),
        ),
      ),
    );
  }
}
