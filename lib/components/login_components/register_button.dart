import 'package:cocoa_kg/constants/app_colors.dart';
import 'package:cocoa_kg/views/register_view.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 260,
      decoration: BoxDecoration(
        color: AppColors.color2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterView()),
            );
          },
          child: Text(
            "Регистрация",
            style: TextStyle(
              color: AppColors.mainColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
