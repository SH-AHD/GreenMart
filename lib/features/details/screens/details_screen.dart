import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/core/widgets/custom_network_img.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/features/details/widgets/amount_and_price.dart';
import 'package:green_mart/features/details/widgets/nutritions_tile.dart';
import 'package:green_mart/features/details/widgets/review_tile.dart';
import 'package:green_mart/features/details/widgets/title_and_fav.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accentColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const SvgPic(img: AppAssets.sharesSvg),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 250,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 30),
              decoration: BoxDecoration(color: AppColors.accentColor),
              child: Hero(
                tag: model.tag ?? '',
                child: CustomNetworkImage(imageUrl: model.img ?? ''),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  TitleAndFav(model: model),
                  SizedBox(height: 15),
                  AmountAndPrice(model: model),
                  SizedBox(height: 10),
                  Divider(),
                  ExpansionTile(
                    title: Text(
                      "Product Detail",
                      style: TextStyles.font16Black.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          model.description ?? "No Description....",
                          style: TextStyles.font16Black.copyWith(
                            color: AppColors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(),

                  NutritionsTile(),

                  Divider(),

                  ReviewTile(),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: Button(
          height: 60,
          title: "Add To Cart",
          onpress: () {
            ShopRepository().addToCart(model);
          },
        ),
      ),
    );
  }
}
