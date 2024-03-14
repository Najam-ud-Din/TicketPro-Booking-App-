import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    // print('Screen height is: ${Applayout.getscreenheight()}');
    print("Hotel price is ${hotel}");
    final size = Applayout.getSize(context);
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: Applayout.getheight(350),
      width: size.width * 0.6,
      decoration: BoxDecoration(
          color: styles.tic_hotel_color,
          borderRadius: BorderRadius.circular(24)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          //s margin: EdgeInsets.all(1.0),
          height: Applayout.getheight(180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            //color: styles.primarycolor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/${hotel['image']}",
              ),
            ),
          ),
        ),
        gap(Height: Applayout.getheight(4), Width: 0),
        Text(
          "${hotel['place']}",
          style: styles.headlinestyle3.copyWith(color: Colors.white),
        ),
        gap(Height: Applayout.getheight(4), Width: 0),
        Text(
          "${hotel['destination']}",
          style: styles.headlinestyle4.copyWith(color: Colors.white),
        ),
        gap(Height: Applayout.getheight(4), Width: 0),
        Text(
          "\$${hotel['price']}/day",
          style: styles.headlinestyle1.copyWith(color: Colors.black38),
        ),
      ]),
    );
  }
}
