import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = ["najam", "waleed", "Danish"];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello",
          style: TextStyle(color: styles.orangecolor),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: styles.primarycolor),
            child: Text(
              arrName[index],
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
