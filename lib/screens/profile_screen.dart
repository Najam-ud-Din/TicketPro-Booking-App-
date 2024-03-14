import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iscolor = null;
    return SizedBox(
      height: Applayout.getheight(24),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / 6).floor(),
                (index) => Text(
                      "-",
                      style: TextStyle(
                          color: iscolor == null ? Colors.white : Colors.blue),
                    )),
          );
        },
      ),
    );
  }
}
