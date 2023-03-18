import 'package:cocoa_kg/views/home_view.dart';
import 'package:cocoa_kg/views/login_view.dart';
import 'package:flutter/material.dart';

class CocoaKg extends StatelessWidget {
  const CocoaKg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "cocoa kg",
      home: LoginView(),
    );
  }
}
