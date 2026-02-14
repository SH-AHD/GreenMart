import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.hint,
    this.pre,
    this.suf,

    this.validator,
    this.controller,
    this.keyboardType,
    this.enabled,
    this.onTap,
    this.onChange,
    this.focusNode,
  });

  final String? hint;
  final Widget? pre;
  final Widget? suf;

  final String? Function(String?)? validator;
  final TextEditingController? controller;

  final TextInputType? keyboardType;
  final bool? enabled;
  final Function()? onTap;
  final Function(String)? onChange;
final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      onTap: onTap,
      onTapOutside: (event) =>  FocusManager.instance.primaryFocus?.unfocus(),
      focusNode: focusNode,
      onChanged: onChange,
      enabled: enabled ?? true,
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
