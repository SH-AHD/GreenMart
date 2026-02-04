import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/helpers/app_validator.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Home/home_screen.dart';
import 'package:green_mart/features/auth/Screens/login_screen.dart';
import 'package:green_mart/core/helpers/fields_functions.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
 Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Center(child: SvgPic(img: AppAssets.carrotSvg)),
                SizedBox(height: 60,),
                Text("Sign Up",style: TextStyles.font24BlackW600,),
                 SizedBox(height: 5,),
                Text("Enter your credentials to continue",style: TextStyles.font16Black.copyWith(color: AppColors.black.withAlpha(150),),),
                 SizedBox(height: 30,),
                  titleWithField(title: "Username",validator: AppValidators.validateUsername, controller: null),
                  SizedBox(height: 30,),
                  titleWithField(title: "Email",validator: AppValidators.validateEmail, controller: null),
                  SizedBox(height:30,),
                titleWithField(title: "Password",isPass:true,validator: AppValidators.validatePassword, controller: null),
            SizedBox(height: 30),
                Button(title: "Sing Up", onpress: (){
                  if(_formKey.currentState!.validate()){
                  pushReplacementPage(context: context, newScreen: HomeScreen());

                  }
                },),
                Center(
                  child: TextButton(onPressed: (){
                              pushReplacementPage(context: context, newScreen: LoginScreen());
                             }, child: RichText(
                              text: TextSpan(
                          children: [
                            TextSpan(text:"Already have an account? ",style: TextStyles.font14Black.copyWith(fontWeight: FontWeight.bold),),
                            TextSpan(text:"Login",style: TextStyles.font16Black.copyWith(color: AppColors.primaryColor,fontWeight: FontWeight.w600),),
                          ]
                          ),
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