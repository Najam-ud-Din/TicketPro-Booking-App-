import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/thickcontainer.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const TicketView({super.key, required this.ticket, this.iscolor});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getheight(GetPlatform.isAndroid == true ? 147 : 169),
      child: Container(
        // color: Colors.blue,
        margin: EdgeInsets.symmetric(horizontal: Applayout.getWidth(12)),
        child: Column(
          children: [
            //-- Making blue part of the ticket view
            Container(
              padding: EdgeInsets.all(Applayout.getheight(13)),
              decoration: BoxDecoration(
                  color:
                      iscolor == null ? styles.tic_hotel_color : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                        style: styles.headlinestyle4.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black)),
                    const Spacer(),
                    ThickContainer(
                      iscolor: iscolor,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: Applayout.getheight(24),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => Text(
                                        "-",
                                        style: TextStyle(
                                            color: iscolor == null
                                                ? Colors.white
                                                : Colors.blue),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.6,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: iscolor == null ? Colors.white : Colors.blue,
                          ),
                        ),
                      ),
                    ])),
                    ThickContainer(
                      iscolor: iscolor,
                    ),
                    const Spacer(),
                    Text(ticket['to']['code'],
                        style: styles.headlinestyle4.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black)),
                  ],
                ),
                Row(
                  children: [
                    Text(ticket['from']['name'],
                        style: styles.headlinestyle4.copyWith(
                            color: iscolor == null
                                ? Colors.white
                                : Colors.black38)),
                    const Spacer(),
                    Text(
                      ticket['flying_time'],
                      style: TextStyle(
                          color: iscolor == null ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(ticket['to']['name'],
                        style: styles.headlinestyle4.copyWith(
                            color: iscolor == null
                                ? Colors.white
                                : Colors.black38)),
                  ],
                )
              ]),
            ),

            //Making Orange part of the ticket view
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(Applayout.getheight(14)),
                  decoration: BoxDecoration(
                      color: iscolor == null
                          ? const Color.fromARGB(235, 244, 95, 78)
                          : Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(ticket['date'],
                            style: styles.headlinestyle4.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.black38)),
                        const Spacer(),
                        Text(
                          ticket['departure_time'],
                          style: TextStyle(
                              color:
                                  iscolor == null ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        //ThickContainer(),
                        //ThickContainer(),
                        const Spacer(),
                        Text(ticket['number'].toString(),
                            style: styles.headlinestyle4.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.black38)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Date ",
                            style: styles.headlinestyle4.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        const Spacer(),
                        Text(
                          "Departure time",
                          style: styles.headlinestyle4.copyWith(
                              color: iscolor == null
                                  ? Colors.white
                                  : Colors.black38,
                              fontSize: 13),
                        ),
                        const Spacer(),
                        Text(ticket['to']['name'],
                            style: styles.headlinestyle4.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: Applayout.getheight(10),
                      width: Applayout.getWidth(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      height: Applayout.getheight(10),
                      width: Applayout.getWidth(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
            //---------Making orange part of the ticket view--------------------------------//
          ],
        ),
      ),
    );
  }
}
