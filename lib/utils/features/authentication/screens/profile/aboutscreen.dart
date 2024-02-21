import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            "About Us",
            style: Theme.of(context).primaryTextTheme.headlineLarge,
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(LineAwesomeIcons.bell))
          ],
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          width: 400,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "About The App",
              style: TextStyle(
                color: Color.fromARGB(255, 213, 50, 110),
                fontWeight: FontWeight.w500,
                fontSize: 25,
                fontFamily: "Dubai",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You can get in touch of us through below platforms. Our team will reach out to you as soon as possible.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            const Text(
              "Our Purpose",
              style: TextStyle(
                color: Color.fromARGB(255, 213, 50, 110),
                fontWeight: FontWeight.w500,
                fontSize: 25,
                fontFamily: "Dubai",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You can get in touch of us through below platforms. Our team will reach out to you as soon as possible.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            const Text(
              "Our Goal",
              style: TextStyle(
                color: Color.fromARGB(255, 213, 50, 110),
                fontWeight: FontWeight.w500,
                fontSize: 25,
                fontFamily: "Dubai",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You can get in touch of us through below platforms. Our team will reach out to you as soon as possible.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
          ]),
        ));
  }
}
