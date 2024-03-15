import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';
//import 'package:ticket_app/widgets/Tic_screen_cont.dart';
import 'package:ticket_app/widgets/app_tab.dart';
// import 'package:ticket_app/widgets/icon_text_container.dart';
// import 'package:ticket_app/widgets/view_all.dart';

class ticketScreen extends StatelessWidget {
  const ticketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
        backgroundColor: styles.bg,
        body: Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(
                  horizontal: Applayout.getWidth(17),
                  vertical: Applayout.getheight(20)),
              children: [
                gap(Height: Applayout.getheight(46), Width: 0),
                Text("Tickets",
                    style: styles.headlinestyle1
                        .copyWith(fontSize: Applayout.getheight(32))),
                gap(Height: Applayout.getheight(20), Width: 0),
                TicketTab(firstValue: "Upcoming", secondValue: "Previous"),
                gap(Height: Applayout.getheight(30), Width: 0),
                Column(
                  children: [
                    Container(
                      child: TicketView(
                        ticket: ticketList[0],
                        iscolor: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Flutter ID",
                                    style: styles.headlinestyle3
                                        .copyWith(color: Colors.black),
                                  ),
                                  gap(
                                      Height: Applayout.getheight(05),
                                      Width: 0),
                                  Text(
                                    "Passenger",
                                    style: styles.headlinestyle4
                                        .copyWith(color: Colors.black38),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
