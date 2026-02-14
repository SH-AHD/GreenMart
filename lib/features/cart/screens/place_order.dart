import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Home/home_screen.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(children: [
        SvgPic(img:AppAssets.checkIconSvg),
        SizedBox(height: 30,),
        Text("Your Order has been accepted", textAlign: TextAlign.center,style: TextStyles.font33BlackW600,),
        SizedBox(height: 15,),
        Text("Your items has been placcd and is on it’s way to being processed", textAlign: TextAlign.center,style: TextStyles.font18GrayW600.copyWith(fontWeight: FontWeight.w400),),
        SizedBox(height: 60,),
        Button(title: "Go To Home", 
        height: 60,
        onpress: (){
          pushReplacementPage(context: context, newScreen: HomeScreen());
        },
        ),
          ],),
      ),
      ),
    );
  }
}