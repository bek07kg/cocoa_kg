import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/modules/home/home.dart';
import 'package:cocoa_kg/modules/main/logic/main_cubit.dart';
import 'package:cocoa_kg/modules/menu/menu.dart';
import 'package:cocoa_kg/modules/shopping/shopping.dart';
import 'package:cocoa_kg/modules/store/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen([
      HomeView(),
      StoreView(),
      ShoppingView(),
      MenuView(),
    ]);
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen(this.items, {super.key});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[context.watch<MainCubit>().state],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: context.watch<MainCubit>().state,
        onTap: context.read<MainCubit>().change,
        fixedColor: AppColors.mainColor,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.home_filled),
            icon: Image.asset(
              "assets/icons/home_icon.png",
              height: 28,
              width: 28,
            ),
            label: "Башкы бет",
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.local_mall),
            icon: Image.asset(
              "assets/icons/local_mall_icon.png",
              height: 25,
              width: 25,
            ),
            label: "Магазин",
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.shopping_cart),
            icon: Image.asset(
              "assets/icons/shopping_cart_icon.png",
              height: 25,
              width: 25,
            ),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.menu),
            icon: Image.asset(
              "assets/icons/menu_icon.png",
              height: 25,
              width: 25,
            ),
            label: "Меню",
          ),
        ],
      ),
    );
  }
}
