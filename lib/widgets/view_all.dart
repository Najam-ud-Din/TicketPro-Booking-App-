import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String bigtext, smalltext;
  const ViewAll({super.key, required this.bigtext, required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: styles.headlinestyle2,
        ),
        InkWell(
          onTap: () {
            print("you are tapped");
          },
          child: Text(
            smalltext,
            style: styles.textStyle.copyWith(color: styles.tic_hotel_color),
          ),
        ),
      ],
    );
  }
}
