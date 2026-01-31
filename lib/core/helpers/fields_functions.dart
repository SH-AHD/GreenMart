import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_input_field.dart';
import 'package:green_mart/features/auth/widgets/custom_password_field.dart';

Widget titleWithField({required String title, String? hint,Widget? pre , Widget? suf, bool isPass=false}){

   return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Text(title,style: TextStyles.font16Black,),
    SizedBox(height: 5,),
    isPass?CustomPasswordField(pre: pre,):CustomInputField(hint: hint,pre: pre,suf: suf),
   ],);
   }