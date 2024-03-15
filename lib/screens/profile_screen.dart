import 'package:flutter/material.dart';
import 'package:ticket_app/screens/movescreen.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_layout.dart';
//import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mylist = ['najam', "danish", "sohaib", "Ali Ather", "sazib"];
    final iscolor = null;
    return Scaffold(
      appBar: AppBar(
        title: Text("My app bar "),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: [
            TextButton(
              child: Text("Click here"),
              onPressed: () {
                print("Button is tapped");
              },
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green.shade300),
                    shadowColor:
                        MaterialStatePropertyAll<Color>(Colors.black12),
                    shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    )),
                    textStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.white))),
                clipBehavior: Clip.antiAlias,
                child: Text(
                  "Elevated Button",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
            gap(Height: 12, Width: 0),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.green.shade300),
                shadowColor: MaterialStatePropertyAll<Color>(Colors.white),
              ),
              clipBehavior: Clip.hardEdge,
            ),
            gap(Height: 30, Width: 0),
            TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: Text('TextButton')),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 110, 160, 201)),
              ),
              onPressed: () {},
              child: Text('TextButton'),
            ),
            gap(Height: 56, Width: 0),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mylist.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    mylist[index],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
