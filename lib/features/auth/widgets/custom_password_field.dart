import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,this.pre});
final Widget? pre;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
bool isObscure=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: widget.pre,
        suffixIcon: IconButton(
          icon: Icon(isObscure?Icons.visibility:Icons.visibility_off,color: AppColors.grey,),
          onPressed:(){
            setState(() {
            isObscure=!isObscure;
          });
          }),
        hintText: "● ● ● ● ● ● ● ●",
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