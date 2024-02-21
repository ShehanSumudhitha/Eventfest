import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UserManagementScreen extends StatefulWidget {
  const UserManagementScreen({super.key});

  @override
  State<UserManagementScreen> createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends State<UserManagementScreen> {
  bool notifications = false;
  String _selectedItem = "English";
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
          "User Management",
          style: Theme.of(context).primaryTextTheme.headlineMedium,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.bell))
        ],
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          child: SwitchListTile(
            title: Text("Enable Notifications"),
            value: notifications,
            onChanged: (bool value) {
              setState(() {
                notifications = value;
              });
            },
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text('Language'),
            subtitle: DropdownButton<String>(
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items: <String>['English', 'Sinhala', 'Tamil', 'Arabic']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        )
      ]),
    );
  }
}
