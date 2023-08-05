import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.color2,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.color2,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.mainColor,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Торты",
                  style: AppTextStyle.style1,
                ),
              ),
              Tab(
                child: Text(
                  "Чизкейки",
                  style: AppTextStyle.style1,
                ),
              ),
              Tab(
                child: Text(
                  "Кексы",
                  style: AppTextStyle.style1,
                ),
              ),
              Tab(
                child: Text(
                  "Пироги",
                  style: AppTextStyle.style1,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
