import 'package:flutter/material.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/custom_input_field.dart';
import 'package:green_mart/features/auth/Screens/verification_code.dart';

class EnterPhoneNumber extends StatelessWidget {
  const EnterPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 68),
        child: SingleChildScrollView(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your mobile number",
                  style: TextStyles.font24BlackW600,
                ),
                SizedBox(height: 10),
                Text(
                  "We need to verify you. We will send you a one time verification code.",
                  style: TextStyles.font14Black.copyWith(
                    color: AppColors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 42),
                CustomInputField(
                  hint: "01xxxxxxxxx",
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 46),
                Button(
                  title: "Next",
                  onpress: () {
                    pushPage(context: context, newScreen: VerificationCode());
                  },
                ),

                SizedBox(height: 25),
                GestureDetector(

                  onTap: (){
                  },
                  child: Center(
                    child: Text(
                      "Resend confirmation code (1:23)",
                      style: TextStyles.font16Black,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
