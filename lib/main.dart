import 'package:flutter/material.dart';
import 'package:ticket_app/screens/buttom_bar.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: ButtomBar(),
    );
  }
}
