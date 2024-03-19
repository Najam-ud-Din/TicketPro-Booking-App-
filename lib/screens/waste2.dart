import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

class Waste2 extends StatelessWidget {
  const Waste2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: Applayout.getWidth(70),
            height: Applayout.getheight(70),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: styles.primarycolor,
                border: Border.all(
                  color: styles.textcolor,
                )),
            child: Center(
              child: Text(
                "My data ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: Applayout.getWidth(50),
            height: Applayout.getheight(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                border: Border.all(
                  color: styles.textcolor,
                )),
            child: Text(
              "My data ",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: Applayout.getWidth(50),
            height: Applayout.getheight(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                border: Border.all(
                  color: styles.textcolor,
                )),
            child: Text(
              "My data ",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: Applayout.getWidth(50),
            height: Applayout.getheight(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                border: Border.all(
                  color: styles.textcolor,
                )),
            child: Text(
              "My data ",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: Container(
              width: Applayout.getWidth(50),
              height: Applayout.getheight(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  border: Border.all(
                    color: styles.textcolor,
                  )),
              child: Text(
                "My data ",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
