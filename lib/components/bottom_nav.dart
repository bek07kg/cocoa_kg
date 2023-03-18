import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 43,
      color: AppColors.mainColor,
      child: Row(
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: AppColors.color2,
                  size: 20,
                ),
                Text(
                  "Главная",
                  style: TextStyle(color: AppColors.color2, fontSize: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 90,
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.color2,
                  size: 20,
                ),
                Text(
                  "Магазин",
                  style: TextStyle(color: AppColors.color2, fontSize: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 90,
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.color2,
                  size: 20,
                ),
                Text(
                  "Адреса",
                  style: TextStyle(color: AppColors.color2, fontSize: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 90,
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.menu,
                  color: AppColors.color2,
                  size: 20,
                ),
                Text(
                  "Еще",
                  style: TextStyle(color: AppColors.color2, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
