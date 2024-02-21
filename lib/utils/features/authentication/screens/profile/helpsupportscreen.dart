import 'package:eventmainapp/utils/features/authentication/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Help and Support",
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(LineAwesomeIcons.moon))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact us",
                      style: TextStyle(
                        color: Color.fromARGB(255, 213, 50, 110),
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        fontFamily: "Dubai",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "You can get in touch of us through below platforms. Our team will reach out to you as soon as possible.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 185.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(92, 74, 79, 82),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Customer Support",
                                style: Theme.of(context).textTheme.titleLarge),
                            SizedBox(height: 10),
                            ProfileMenuWidget(
                                title: "+9412330934",
                                iconColor: Colors.grey.shade600,
                                icon: LineAwesomeIcons.phone,
                                endIcon: false,
                                onPress: () {}),
                            SizedBox(height: 10),
                            ProfileMenuWidget(
                                title: "eventfest@gmail.com",
                                iconColor: Colors.grey.shade600,
                                icon: LineAwesomeIcons.mail_bulk,
                                endIcon: false,
                                onPress: () {}),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(92, 74, 79, 82),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Social Media",
                                style: Theme.of(context).textTheme.titleLarge),
                            SizedBox(height: 10),
                            ProfileMenuWidget(
                                title: "@eventfest",
                                iconColor: Colors.pink.shade600,
                                icon: LineAwesomeIcons.instagram,
                                endIcon: false,
                                onPress: () {}),
                            SizedBox(height: 10),
                            ProfileMenuWidget(
                                title: "@eventfest",
                                iconColor: Colors.blue.shade600,
                                icon: LineAwesomeIcons.twitter,
                                endIcon: false,
                                onPress: () {}),
                            SizedBox(height: 10),
                            ProfileMenuWidget(
                                title: "Eventfest",
                                iconColor: Color.fromARGB(255, 24, 50, 101),
                                icon: LineAwesomeIcons.facebook,
                                endIcon: false,
                                onPress: () {}),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
