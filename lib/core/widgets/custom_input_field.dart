import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key, this.hint, 
    this.pre, this.suf,
    
    this.validator,
    this.controller,
    
    });

final String? hint;
final Widget? pre;
final Widget? suf;

final String? Function(String?)? validator;
final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: validator,
      controller: controller,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: pre,
        suffixIcon: suf,
        hintText: hint,
        hintStyle: TextStyles.font14Black.copyWith(color:AppColors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.primaryColor.withAlpha(200),
            ),
          ),

          errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.errorColor),
        ),
      ),
      
      
    );
  }
}