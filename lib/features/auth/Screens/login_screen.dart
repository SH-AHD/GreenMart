import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Home/home_screen.dart';
import 'package:green_mart/features/auth/Screens/forgot_password_screen.dart';
import 'package:green_mart/features/auth/Screens/signup_screen.dart';
import 'package:green_mart/core/helpers/fields_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(child: SvgPic(img: AppAssets.carrotSvg)),
              SizedBox(height: 60,),
              Text("Login",style: TextStyles.font24BlackW600,),
               SizedBox(height: 5,),
              Text("Enter your emails and password",style: TextStyles.font16Black.copyWith(color: AppColors.black.withAlpha(150),),),
               SizedBox(height: 30,),
                titleWithField(title: "Email"),
                 SizedBox(height:30,),
              titleWithField(title: "Password",isPass:true),
         Align(
          alignment: Alignment.topRight,
           child: TextButton(onPressed: (){
            pushPage(context: context, newScreen: ForgotPasswordScreen());
           }, child: Text("Forgot Password?",style: TextStyles.font14Black,),
           ),
         ),            
         SizedBox(height: 30),
              Button(title: "Log In", onpress: (){
                pushPage(context: context, newScreen: HomeScreen());
              },),
              Center(
                child: TextButton(onPressed: (){
                            pushPage(context: context, newScreen: SignupScreen());
                           }, child: RichText(
                            text: TextSpan(
                        children: [
                          TextSpan(text:"Don’t have an account? ",style: TextStyles.font16Black,),
                          TextSpan(text:"Singup",style: TextStyles.font16Black.copyWith(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
                        ]
                        ),
                        ),
                           ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
