import 'package:eventmainapp/utils/features/authentication/screens/profile/aboutscreen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/profile/editprofile.screen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/profile/helpsupportscreen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/profile/paymentoptionscreen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/profile/usermanagement_screen.dart';
import 'package:eventmainapp/utils/features/authentication/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          "Profile",
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
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                      image: AssetImage(
                          "assets/images/profiles/dave_profile.jpeg")),
                ),
              ),
              const SizedBox(height: 10),
              Text("Dave", style: Theme.of(context).textTheme.headlineMedium),
              Text("dave@gmail.com",
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              ProfileMenuWidget(
                  title: "Help and Support",
                  //Contact us
                  //File a report
                  //Like Chat
                  icon: LineAwesomeIcons.cog,
                  iconColor: Colors.pink.shade600,
                  onPress: () {
                    Get.to(const HelpSupportScreen());
                  }),
              ProfileMenuWidget(
                  title: "Payment Methods",
                  //Visa Card Details
                  //Cash
                  iconColor: Colors.pink.shade600,
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {
                    Get.to(const PaymentOptionScreen());
                  }),
              ProfileMenuWidget(
                  title: "User Management",
                  //enable notificATIONS
                  //Language
                  iconColor: Colors.pink.shade600,
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {
                    Get.to(const UserManagementScreen());
                  }),
              ProfileMenuWidget(
                  title: "About",
                  //The app
                  //Privacy
                  //Terms and Conditions
                  iconColor: Colors.pink.shade600,
                  icon: LineAwesomeIcons.info,
                  onPress: () {
                    Get.to(const AboutAppPage());
                  }),
              ProfileMenuWidget(
                  title: "Logout",
                  iconColor: Colors.pink.shade600,
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.to(const SignUpPage());
                  }),

              //Edit Profile Button
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(const EditProfileScreen());
                },
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // <-- Radius
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.iconColor,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor,
        ),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100.withOpacity(0.1),
              ),
              child: Icon(LineAwesomeIcons.angle_right,
                  size: 18, color: Colors.grey))
          : null,
    );
  }
}
