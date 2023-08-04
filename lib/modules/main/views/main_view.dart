import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/modules/home/home.dart';
import 'package:cocoa_kg/modules/main/logic/main_cubit.dart';
import 'package:cocoa_kg/modules/profile/profile.dart';
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
      ProfileView(),
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
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_filled),
            label: "Башкы бет",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.store),
            icon: Icon(Icons.store),
            label: "Магазин",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_cart,
            ),
            icon: Icon(Icons.shopping_cart),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: "Жеке кабинет",
          ),
        ],
      ),
    );
  }
}
