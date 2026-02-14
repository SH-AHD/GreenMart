import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/auth/Screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPic(
                    img: AppAssets.carrotSvg,
                    color: AppColors.backgroundColor,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Welcome\nto our store",
                    style: TextStyles.font46BlackW600.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  Text(
                    "Get your groceries in as fast as one hour",
                    style: TextStyles.font16Black.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  Button(
                    title: "Get Started",
                    onpress: () {
                      pushReplacementPage(context: context, newScreen: LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
