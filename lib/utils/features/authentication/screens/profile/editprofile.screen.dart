import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
          "Edit Profile",
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.user_edit))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                        image: AssetImage(
                            "assets/images/profiles/dave_profile.jpeg")),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 213, 50, 110),
                      ),
                      child: Icon(
                        LineAwesomeIcons.alternate_pencil,
                        size: 20,
                      ),
                    ))
              ]),
              SizedBox(height: 10),

              //username textfield
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    //Edit Name
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Edit User Name',
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
                    //User email
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Edit Email',
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
                      decoration: const InputDecoration(
                        labelText: 'Edit Password',
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
                    //Confirm Password
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
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
                      onPressed: () {},
                      child: Text(
                        "Save Profile",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 242),
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
