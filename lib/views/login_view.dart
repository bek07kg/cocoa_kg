import 'package:cocoa_kg/components/login_components/facebook_button.dart';
import 'package:cocoa_kg/components/login_components/google_button.dart';
import 'package:cocoa_kg/components/login_components/register_button.dart';
import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/foto5.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 160),
                RegisterButton(),
                SizedBox(height: 40),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: AppColors.color2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Катталгансызбы?",
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Кирүү",
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: AppColors.color2,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Же төмөндөкүлөр менен улантуу:",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                FacebookButton(),
                SizedBox(height: 15),
                GoogleButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
