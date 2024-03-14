import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

class TicScreenCon extends StatelessWidget {
  final String txt1, txt2, txt3;
  final String txt4;
  TicScreenCon(
      {super.key,
      required this.txt1,
      required this.txt2,
      required this.txt3,
      required this.txt4});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Applayout.getWidth(28),
          vertical: Applayout.getheight(18)),
      // color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1,
                    style: styles.headlinestyle3
                        .copyWith(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    txt2,
                    style: styles.headlinestyle4.copyWith(fontSize: 12),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    txt3,
                    style: styles.headlinestyle3.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    txt4,
                    style: styles.headlinestyle4.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
