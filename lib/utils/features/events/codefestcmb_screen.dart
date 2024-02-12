import 'package:flutter/material.dart';

class CodeFestScreen extends StatefulWidget {
  const CodeFestScreen({super.key});

  @override
  State<CodeFestScreen> createState() => _CodeFestScreenState();
}

class _CodeFestScreenState extends State<CodeFestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/events/codefest.jpeg"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
