import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:flutter/material.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color2,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: const Text(
          "Магазин            Cocao kg",
          style: TextStyle(
              fontFamily: "Pacifico", fontSize: 25, color: AppColors.color2),
        ),
      ),
    );
  }
}
