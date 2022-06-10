import 'package:fashion_shop_ui/app/app_consts.dart';
import 'package:flutter/material.dart';

class AppButton {
  static normalButton({
    required String title,
    VoidCallback? onPress,
    Color? backgroundColor = AppColors.darkGrey,
    Color? titleColor = Colors.white,
    bool shadow = true,
    double height = 50,
    double width = double.infinity,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: shadow
              ? const [
                  BoxShadow(color: AppColors.lightGrey, blurRadius: 5),
                ]
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
