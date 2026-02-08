import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key, this.hint, 
    this.pre, this.suf,
    
    this.validator,
    this.controller,
    this.keyboardType,

    });

final String? hint;
final Widget? pre;
final Widget? suf;

final String? Function(String?)? validator;
final TextEditingController? controller;

final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.accentColor,
        prefixIcon: pre,
        suffixIcon: suf,
        hintText: hint,
      ),
      
      
    );
  }
}