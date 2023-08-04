import 'package:cocoa_kg/modules/home/home.dart';
import 'package:cocoa_kg/modules/main/main.dart';
import 'package:cocoa_kg/modules/profile/profile.dart';
import 'package:cocoa_kg/modules/shopping/logic/shopping_cubit.dart';
import 'package:cocoa_kg/modules/store/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cocao kg",
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainCubit(),
          ),
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
          BlocProvider(
            create: (context) => StoreCubit(),
          ),
          BlocProvider(
            create: (context) => ShoppingCubit(),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(),
          ),
        ],
        child: const MainView(),
      ),
    );
  }
}
