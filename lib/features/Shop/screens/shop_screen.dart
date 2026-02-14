import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_input_field.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Shop/widgets/best_selling.dart';
import 'package:green_mart/features/Shop/widgets/exclusive_offer_list.dart';
import 'package:green_mart/features/search/screens/search_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: SvgPic(
          img: AppAssets.logoSvg,
          color: AppColors.primaryColor,
          height: 45,
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
 GestureDetector(
                onTap: (){
                  pushPage(context: context, 
                  newScreen: SearchScreen());
                },
                child: CustomInputField(
                  hint: "Search Store", 
                  pre: Icon(Icons.search),
                  enabled: false,
                  ),
              ),
              SizedBox(height: 20),
              ExclusiveOfferList(),
                SizedBox(height: 20),
              BestSellingList(),
            ],
          ),
        ),
      ),
    );
  }
}
