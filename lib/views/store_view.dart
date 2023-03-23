import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../components/home_page_components/store_row.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.color2,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Дүкөн",
          style: TextStyle(
            color: AppColors.color2,
            fontSize: 35,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/store_back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  StoreRow(
                    image: Image.asset(
                      "assets/images/store_images/foto01.png",
                    ),
                    onTap: () {},
                    image1:
                        Image.asset("assets/images/store_images/foto02.png"),
                    onTap1: () {},
                  ),
                  SizedBox(height: 20),
                  StoreRow(
                      onTap: () {},
                      image:
                          Image.asset("assets/images/store_images/foto03.png"),
                      onTap1: () {},
                      image1:
                          Image.asset("assets/images/store_images/foto04.png")),
                  SizedBox(height: 20),
                  StoreRow(
                      onTap: () {},
                      image:
                          Image.asset("assets/images/store_images/foto05.png"),
                      onTap1: () {},
                      image1:
                          Image.asset("assets/images/store_images/foto06.png")),
                  SizedBox(height: 20),
                  StoreRow(
                      onTap: () {},
                      image:
                          Image.asset("assets/images/store_images/foto07.png"),
                      onTap1: () {},
                      image1:
                          Image.asset("assets/images/store_images/foto08.png")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
