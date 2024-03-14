import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iscolor = null;
    return Scaffold(
      appBar: AppBar(
        title: Text("My app bar "),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            child: Text("Click here"),
            onPressed: () {
              print("Button is tapped");
            },
          )
        ],
      )),
    );
  }
}
