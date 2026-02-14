import 'package:flutter/material.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/explore/screens/cat_products_screen.dart';

class ExclusiveOfferList extends StatelessWidget {
  const ExclusiveOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Exclusive Offer", style: TextStyles.font24BlackW600),
            TextButton(
              onPressed: () {},

              child: TextButton(
                                onPressed: (){
                  pushPage(
                        context: context,
                        newScreen: CatProductsScreen(
                          categoryName: "Exclusive Offer",
                          offerOrBestProducts: ShopRepository().offerProducts,
                        ),
                      );
                },
                child: Text(
                  "See all",
                  style: TextStyles.font14Black.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),

        SizedBox(
          height: 270,
          child: FutureBuilder<List<ProductModel>>(
            future: ShopRepository().getOfferStaticProducts(),
            builder: (context, asyncSnapshot) {
              if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                );
              }
              if (asyncSnapshot.connectionState == ConnectionState.done) {
                List<ProductModel> products = asyncSnapshot.data ?? [];
                return ListView.separated(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 180,
                      child: ItemCard(model: products[index]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemCount: products.length,
                );
              }
              if (asyncSnapshot.hasError) {
                Center(
                  child: Text(
                    "${asyncSnapshot.error}",
                    style: TextStyles.font16Black,
                  ),
                );
              }
              return Center(
                child: Text(
                  "This should not happend!",
                  style: TextStyles.font24BlackW600,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
