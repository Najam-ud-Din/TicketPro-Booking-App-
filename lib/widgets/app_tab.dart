import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final String firstValue, secondValue;
  const TicketTab(
      {super.key, required this.firstValue, required this.secondValue});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Applayout.getheight(60)),
          color: Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getheight(7)),
              width: size.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(Applayout.getheight(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(firstValue)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getheight(7)),
              width: size.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(Applayout.getheight(50))),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondValue)),
            ),
          ],
        ),
      ),
    );
  }
}
