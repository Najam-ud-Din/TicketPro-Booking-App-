import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';
//import 'package:ticket_app/screens/movescreen.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/screens/search_screen.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => ButtomBarState();
}

class ButtomBarState extends State<ButtomBar> {
  int selectedIndex = 0;

  void onitemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    print('${selectedIndex}');
  }

  static final List<Widget> widgetsOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ticketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetsOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onitemtapped,
          elevation: 9,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: styles.tic_hotel_color,
          unselectedItemColor: Color.fromARGB(255, 97, 117, 149),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: "Profile"),
          ]),
    );
  }
}
