import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/views/login_view.dart';
import 'package:cocoa_kg/views/home_view.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool active = false;
  String? name;
  String? email;
  String? password;

  void chekc() {
    if (name != null && email != null && password != null) {
      if (name!.isEmpty || email!.isEmpty || password!.isEmpty) {
        active = false;
      } else {
        active = true;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Регистрация",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 60),
              TextFormField(
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (String? value) {
                  name = value;
                  chekc();
                },
                decoration: InputDecoration(
                  hintText: "Аты-жөнү",
                  focusColor: AppColors.color2,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.person,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (String? value) {
                  email = value;
                  chekc();
                },
                decoration: InputDecoration(
                  hintText: "Эл.почтасы",
                  focusColor: AppColors.mainColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.email,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (String? value) {
                  password = value;
                  chekc();
                },
                decoration: InputDecoration(
                  hintText: "Пароль",
                  focusColor: AppColors.mainColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.lock,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                ),
                onPressed: active
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      }
                    : null,
                child: Text(
                  "Регистрация",
                  style: TextStyle(
                    color: AppColors.color2,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
