import 'package:eventmainapp/utils/features/authentication/controllers/auth_controller.dart';
import 'package:eventmainapp/utils/features/authentication/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final AuthController _controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1E2019),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),

                //logo
                const Image(
                  image: AssetImage("assets/images/samplelogo.png"),
                  height: 200,
                  width: 200,
                ),

                SizedBox(height: 20),

                //Welcome back, you've been missed
                const Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                  child: Text(
                    "Welcome, Enter your Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 213, 50, 110),
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //username textfield
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 22),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: txtEmail,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 22),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: txtPassword,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 22),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {
                          _controller.SignUp(
                            email: txtEmail.text.trim(),
                            password: txtPassword.text.trim(),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //Already a memeber? Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Get.off(() => LoginPage());
                      },
                      child: Text("Login now",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
