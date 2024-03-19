import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';
import 'package:ticket_app/widgets/app_tab.dart';
import 'package:ticket_app/widgets/icon_text_container.dart';
import 'package:ticket_app/widgets/view_all.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bg,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getWidth(17),
            vertical: Applayout.getheight(20)),
        children: [
          gap(Height: Applayout.getheight(46), Width: 0),
          Text("What are \n you looking for?",
              style: styles.headlinestyle1
                  .copyWith(fontSize: Applayout.getheight(32))),
          gap(Height: Applayout.getheight(20), Width: 0),
          TicketTab(firstValue: "Ticket", secondValue: '"tryuytr'),
          gap(Height: Applayout.getheight(27), Width: 0),
          IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          gap(Height: Applayout.getheight(20), Width: 0),
          IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          gap(Height: Applayout.getheight(32), Width: 0),
          Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Applayout.getWidth(15),
                  vertical: Applayout.getWidth(16)),
              decoration: BoxDecoration(
                  color: styles.tic_hotel_color,
                  borderRadius: BorderRadius.circular(7)),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),
          gap(Height: Applayout.getheight(45), Width: 0),
          ViewAll(bigtext: "Upcoming Flights", smalltext: "View all"),
          gap(Height: Applayout.getheight(20), Width: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getWidth(6),
                    vertical: Applayout.getheight(10)),
                height: Applayout.getheight(Applayout.getheight(420)),
                width: Applayout.getWidth(Applayout.getWidth(150)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getheight(200),
                      //width: Applayout.getheight(150),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/photo1.jpg"),
                        ),
                      ),
                    ),
                    Text(
                      "20% discount on business class tickets from the Airline On International",
                      style: styles.headlinestyle3,
                    ),
                  ],
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Applayout.getWidth(10),
                            vertical: Applayout.getheight(8)),
                        width: size.width * 0.45,
                        height: Applayout.getheight(180),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Applayout.getheight(18),
                          ),
                          color: Color(0xFF3AB8B8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: styles.headlinestyle3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            gap(Height: Applayout.getheight(10), Width: 0),
                            Text(
                              "Take the survey about the services and get a discount",
                              style: styles.headlinestyle4.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -40,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(Applayout.getheight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 15, color: Color(0xFF189999)),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  gap(Height: Applayout.getheight(18), Width: 0),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getWidth(18),
                        vertical: Applayout.getheight(16)),
                    width: size.width * 0.45,
                    height: Applayout.getheight(220),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getheight(18)),
                        color: Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: styles.headlinestyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        gap(Height: Applayout.getheight(5), Width: 0),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 38),
                          ),
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 30),
                          ),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
