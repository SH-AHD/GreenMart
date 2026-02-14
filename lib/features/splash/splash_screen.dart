import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/features/Home/home_screen.dart';
import 'package:green_mart/features/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      pushReplacementPage(context: context, newScreen:const OnboardingScreen());
    
    //  pushReplacementPage(context: context, newScreen:const HomeScreen());
    
     });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: AppColors.primaryColor,
body: Center(
  child: SvgPicture.asset(AppAssets.logoSvg, width: 250,),
),
    );
  }
}