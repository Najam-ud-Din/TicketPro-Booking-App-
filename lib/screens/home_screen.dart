import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_layout.dart';
//import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bg,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              //const Gap(40),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: styles.headlinestyle3,
                      ),
                      //  const Gap(1),
                      Text(
                        "Book Tickets",
                        style: styles.headlinestyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: Applayout.getWidth(50),
                    height: Applayout.getheight(50),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/img.jpg"),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                //height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular),
                    Text(
                      "Search",
                      style: styles.headlinestyle4,
                    ),
                  ],
                ),
              ),

              const gap(Height: 35, Width: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flights",
                    style: styles.headlinestyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("you are tapped");
                    },
                    child: Text(
                      "View all",
                      style: styles.textStyle
                          .copyWith(color: styles.tic_hotel_color),
                    ),
                  ),
                ],
              ),
              const gap(Height: 15, Width: 0),
            ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((e) => TicketView(ticket: e)).toList(),
            ),
          ),
          gap(Height: 12, Width: 0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: styles.headlinestyle2,
                ),
                InkWell(
                  onTap: () {
                    print("you are tapped");
                  },
                  child: Text(
                    "View all",
                    style: styles.textStyle
                        .copyWith(color: styles.tic_hotel_color),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotellist.map((e) => HotelScreen(hotel: e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
