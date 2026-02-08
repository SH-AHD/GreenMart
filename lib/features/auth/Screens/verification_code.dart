import 'package:flutter/material.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/features/Home/home_screen.dart';
import 'package:green_mart/features/auth/widgets/custom_pinput_field.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter verification code",
                style: TextStyles.font24BlackW600,
              ),
              SizedBox(height: 10),
              Text(
                "We have sent SMS to: 01XXXXXXXXXX",
                style: TextStyles.font14Black.copyWith(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 40),
CustomPinputField(),

                 SizedBox(height: 30),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
TextButton(child: Text("Resend OTP",style: TextStyles.font14Black.copyWith(color: AppColors.OTPColor),),onPressed: (){},),
TextButton(child: Text("Change Phone Number",style: TextStyles.font14Black.copyWith(color: AppColors.grey),),onPressed: (){},),
             ],
             ),
   SizedBox(height: 30),
              Button(title: "Confirm",onpress: (){
                pushReplacementPage(context: context, newScreen: HomeScreen());
              },)
            ],
          ),
        ),
      ),
    );
  }
}
