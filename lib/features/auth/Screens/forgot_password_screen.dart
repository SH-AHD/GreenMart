import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/helpers/app_validator.dart';
import 'package:green_mart/core/helpers/fields_functions.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        SizedBox(height: 20),
              Center(child: SvgPic(img: AppAssets.carrotSvg)),
              SizedBox(height: 60),
           
           Center(child: Text("Reset Password", style: TextStyles.font24BlackW600, )),
                SizedBox(height: 80),
                Text(
                  "Enter your email",
                  style: TextStyles.font16Black,
                ),
                // SizedBox(height: 10),
                titleWithField(
                  title: "",
                  validator: AppValidators.validateEmail,
                  controller: null,
                  keyboardType: TextInputType.emailAddress,
                  
                ),
                SizedBox(height: 30),
      Button(title: "reset password", onpress: (){},height: 60,),
           ],),    ),
      ),
    );
  }

}