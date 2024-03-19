// import 'package:flutter/material.dart';
// import 'package:ticket_app/utils/app_styles.dart';

// class DateTimeselect extends StatefulWidget {
//   const DateTimeselect({super.key});

//   @override
//   State<DateTimeselect> createState() => DateTimeselectState();
// }

// class DateTimeselectState extends State<DateTimeselect> {
//   @override
//   <Widget> build(BuildContext context) async {
//     return Scaffold(
//       backgroundColor: styles.bg,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Select Date"),
//             ElevatedButton(
//                 style: ButtonStyle(
//                     elevation: MaterialStatePropertyAll(6.0),
//                     foregroundColor:
//                         MaterialStatePropertyAll(Color(0xFF29a0b0)),
//                     backgroundColor: MaterialStatePropertyAll(
//                       Color(0xFF36bb75),
//                     )),
//                 onPressed: () async {
//                   DateTime? datepicker = await showDatePicker(
//                       context: context,
//                       firstDate: DateTime.now(),
//                       lastDate: DateTime(2030));

//                   if (datepicker != null) {
//                     print("Selected date is: ${datepicker.day}");
//                   }
//                 },
//                 child: Text(
//                   "Show",
//                   style: TextStyle(color: Colors.white),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

//Color(0xFF29a0b0),

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/utils/space.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  get iscolor => null;

  @override
  Widget build(BuildContext context) {
    var listname = ["najam", "waleed", "Danish", "Ali Ather", "Asghar G"];
    return Scaffold(
      backgroundColor: styles.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: ListView(children: [
          InkWell(
            onTap: () {
              print("This button is tapped");
            },
            child: Container(
              padding: EdgeInsets.only(left: 80.0, top: 30.0),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF36bb75),
                    Color(0xFF29a0b0),
                  ],
                  // stops: [0.6, 0.4],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  // tileMode: TileMode.mirror,
                  // transform: GradientRotation(12),
                ),
              ),
              child: Text(
                "Create your account",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 10,
            height: 60,
            decoration: BoxDecoration(
                // color: Colors.green,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF29a0b0),
                    Color(0xFF36bb75),
                  ],
                  // stops: [0.6, 0.4],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // tileMode: TileMode.mirror,
                  transform: GradientRotation(12),
                ),
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ]),
            child: Center(
              child: Text(
                "Create your account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 50,
            height: 55,
            child: Card(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Create your Account"),
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.black),
                  foregroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  overlayColor: MaterialStatePropertyAll<Color>(Colors.white),
                  shadowColor: MaterialStatePropertyAll<Color>(Colors.blue),
                  elevation: MaterialStatePropertyAll(6.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 19),
            width: 10,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.transparent,
              elevation: 10.0,
              child: Ink(
                child: Center(
                  child: Text(
                    "Create your account",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF29a0b0),
                      Color(0xFF36bb75),
                    ],
                    // stops: [0.6, 0.4],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    // tileMode: TileMode.mirror,
                    transform: GradientRotation(12),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 10.0, // Controls the depth of the shadow
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Card Title'),
                  subtitle: Text('Subtitle goes here'),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Button 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Button 2'),
                    ),
                    gap(Height: Applayout.getheight(12), Width: 0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Button 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );

    //ElevatedButton(
    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(
    //     primary: Colors.transparent, // Remove default background color
    //   ),
    //   child: Ink(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [Colors.blue, Colors.green],
    //       ),
    //       borderRadius: BorderRadius.circular(8.0),
    //     ),
    //     child: Text('Gradient Button'),
    //   ),
    // ),

    // ElevatedButton(
    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(
    //     primary: Colors.transparent, // Remove default background color
    //   ),
    //   child: Ink(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [Colors.blue, Colors.green],
    //       ),
    //       borderRadius: BorderRadius.circular(8.0),
    //     ),
    //     child: Text('Gradient Button'),
    //   ),
    // ),

    //     Padding(
    //   padding: EdgeInsets.all(8.0),
    //   // child: ListView(
    //   //   itemExtent: 60.0,
    //   //   scrollDirection: Axis.vertical,
    //   //   children: [
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Text(
    //   //         "Showing list view",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //     ),
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Center(
    //   //         child: Text(
    //   //           "Showing list view",
    //   //           style: TextStyle(color: Colors.white),
    //   //         ),
    //   //       ),
    //   //     ),
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Text(
    //   //         "Showing list view",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //     ),
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Text(
    //   //         "Showing list view",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //     ),
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Text(
    //   //         "Showing list view",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //     ),
    //   //     Container(
    //   //       height: 80,
    //   //       width: 60,
    //   //       decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(5.0),
    //   //           color: styles.primarycolor),
    //   //       child: Text(
    //   //         "Showing list view",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //     ),
    //   //   ],
    //   // ),

    //   // child: ListView.builder(
    //   //   scrollDirection: Axis.vertical,
    //   //   itemCount: 20,
    //   //   itemBuilder: (context, index) {
    //   //     return Padding(
    //   //       padding: const EdgeInsets.all(8.0),
    //   //       child: Container(
    //   //         height: 80,
    //   //         width: 60,
    //   //         decoration: BoxDecoration(
    //   //             borderRadius: BorderRadius.circular(10.0),
    //   //             boxShadow: [
    //   //               BoxShadow(
    //   //                 blurRadius: 7,
    //   //                 spreadRadius: 1,
    //   //               )
    //   //             ],
    //   //             border: Border.all(
    //   //               width: 2,
    //   //               color: Colors.black,
    //   //             ),
    //   //             color: styles.primarycolor),
    //   //         child: Center(
    //   //           child: Text(
    //   //             "Showing list view",
    //   //             style: TextStyle(color: Colors.white),
    //   //           ),
    //   //         ),
    //   //       ),
    //   //     );
    //   // },

    //   child: Container(
    //     height: 70,
    //     color: Colors.red,
    //     child: Expanded(
    //         child: Stack(children: [
    //       SizedBox(
    //         height: Applayout.getheight(29),
    //         child: LayoutBuilder(
    //           builder: (BuildContext context, BoxConstraints constraints) {
    //             return Flex(
    //               direction: Axis.horizontal,
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               mainAxisSize: MainAxisSize.max,
    //               children: List.generate(
    //                   (constraints.constrainWidth() / 6).floor(),
    //                   (index) => Text(
    //                         "-",
    //                         style: TextStyle(
    //                             color: iscolor == null
    //                                 ? Colors.white
    //                                 : Colors.blue),
    //                       )),
    //             );
    //           },
    //         ),
    //       ),
    //       Center(
    //         child: Transform.rotate(
    //           angle: 1.8,
    //           child: Icon(
    //             Icons.local_airport_rounded,
    //             color: iscolor == null ? Colors.white : Colors.blue,
    //           ),
    //         ),
    //       ),
    //     ])),
    //   ),
    // )
    // )));
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ticket_app/utils/app_styles.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => ProfileScreenState();
// }

// class ProfileScreenState extends State<ProfileScreen> {
//   var mylist = [
//     "najam",
//     "waleed",
//     "Danish",
//     "Ali Ather",
//     "Asghar G",
//     "Misha",
//     "Salma Asghar",
//     "Umer bhai GCU",
//     "Seed",
//     "Semester8",
//     "Semester5"
//   ];
//   String? _selectedOption;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: styles.bg,
//       body: Container(
//         width: 300,
//         height: 50,
//         child: DropdownButton(
//           //list of dropdown items
//           items: mylist.map((String val) {
//             return DropdownMenuItem(value: val, child: Text(val));
//           }).toList(),
//           value: _selectedOption,

//           onChanged: (String? newValue) {
//             setState(() {
//               _selectedOption = newValue;
//             });
//           },

//           // Hint text when no value is selected
//           hint: Text('Select an option'),
//           // Hint text when the dropdown is disabled
//           disabledHint: Text('Dropdown disabled'),
//           // Whether the dropdown button's menu should be displayed across the screen width
//           isExpanded: true,
//         ),
//       ),
//     );
//   }
// }
