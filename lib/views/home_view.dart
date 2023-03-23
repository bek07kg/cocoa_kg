import 'package:cocoa_kg/components/home_page_components/bottom_nav.dart';
import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.color2,
        foregroundColor: AppColors.mainColor,
        centerTitle: true,
        title: Text(
          "Cocoa kg",
          style: TextStyle(
            color: AppColors.mainColor,
            fontSize: 32,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      drawer: Drawer(
        backgroundColor: AppColors.mainColor,
      ),
    );
  }
}
