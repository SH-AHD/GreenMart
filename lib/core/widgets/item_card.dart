import 'package:flutter/material.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_network_img.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/features/details/screens/details_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context: context, newScreen: DetailsScreen(model: model,));
      },
      child: Card(
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.borderColor),
        ),
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Hero(
                  tag: model.tag ?? '',
                  child: CustomNetworkImage(imageUrl: model.img ?? ''),
                ),
              ),
              SizedBox(height: 20),
              Text(
                model.title ?? "Untitled",
                style: TextStyles.font16Black.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4),
              Text(
                model.amount ?? "1kg",
                style: TextStyles.font14Black.copyWith(color: AppColors.grey),
              ),

              SizedBox(height: 18),
              cardFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Row cardFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          model.price ?? "\$0.0",
          style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.bold),
        ),
        addButton(),
      ],
    );
  }

  InkWell addButton() {
    return InkWell(
      onTap: () {
        ShopRepository().addToCart(model);
        print("added!, len: ${ShopRepository().getCartProducts().length}");
        
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Icon(Icons.add, color: AppColors.backgroundColor),
      ),
    );
  }
}
