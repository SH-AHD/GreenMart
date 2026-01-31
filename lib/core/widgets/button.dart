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
  });

  final double width;
  final double height;
  final String title;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: Size(width, height),
      ),

      onPressed: onpress,
      child: Text(
        title,
        style: TextStyles.font18BlackW600.copyWith(
          color: AppColors.backgroundColor,
        ),
      ),
    );
  }
}
