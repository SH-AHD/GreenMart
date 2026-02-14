import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.width = double.infinity,
    this.height = 55,
    required this.title,
    required this.onpress,
    this.widget,
    this.bgcolor,
  });

  final double width;
  final double height;
  final String title;
  final Function() onpress;
  final Widget? widget;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:bgcolor?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)),
        minimumSize: Size(width, height),
      ),

      onPressed: onpress,
      child: widget??Text(
        title,
        style: TextStyles.font18BlackW600.copyWith(
          color: AppColors.backgroundColor,
        ),
      ),
    );
  }
}
