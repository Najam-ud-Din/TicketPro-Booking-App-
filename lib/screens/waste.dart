import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/space.dart';

class Waste extends StatelessWidget {
  const Waste({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mylist = ['najam', "danish", "sohaib", "Ali Ather", "sazib"];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Applayout.getheight(50)),
      child: Scaffold(
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
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
                child: Text(
                  "Outlined Button",
                  style: TextStyle(color: Colors.white),
                ),
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
              gap(Height: 50, Width: 0),
              ListView.builder(
                scrollDirection: Axis.vertical,
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
              ),
              gap(Height: 45, Width: 0),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 58, 226, 67)),
                      shadowColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(31, 37, 34, 34)),
                      shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      textStyle: MaterialStatePropertyAll(
                          TextStyle(color: Colors.white))),
                  clipBehavior: Clip.antiAlias,
                  child: Text(
                    "Elevated Button",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {}),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300),
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
            ],
          )),
        ),
      ),
    );
  }
}
