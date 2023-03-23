import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/views/store_view.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: AppColors.color2,
      child: Center(
        child: Row(
          children: [
            SizedBox(width: 70),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
                size: 30,
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(width: 70),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoreView(),
                  ),
                );
              },
              icon: Icon(
                Icons.store,
                size: 30,
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(width: 70),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
                size: 30,
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(width: 70),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
