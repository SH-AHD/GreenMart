import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,this.pre,
    this.validator,
    this.controller,
    });
final Widget? pre;
final String? Function(String?)? validator;
final TextEditingController? controller;


  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
bool isObscure=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      
      controller: widget.controller,


      keyboardType: TextInputType.visiblePassword,
      obscureText: isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: widget.pre,
        suffixIcon: IconButton(
          icon: Icon(isObscure?Icons.visibility:Icons.visibility_off,color: AppColors.grey,),
          onPressed:(){
            setState(() {
            isObscure=!isObscure;
          });
          }),
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