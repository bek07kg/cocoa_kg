import 'package:cocoa_kg/components/bottom_nav.dart';
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
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Привет, name",
              style: TextStyle(
                color: AppColors.color2,
                fontFamily: "Pacifico",
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.color2,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/foto1.png",
                height: 250,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
