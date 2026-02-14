import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_network_img.dart';
import 'package:green_mart/features/explore/data/cat_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model, required this.onTap});

  final CatModel model;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 150,
        height: 180,
        child: Card(
          // color: model.color!.withValues(alpha: 0.1,),
          color: Color.lerp(model.color, Colors.white, 0.85),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
            side: BorderSide(color: model.color!.withValues(alpha: 0.7)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomNetworkImage(
                    imageUrl: model.imgUrl,
                    h: model.imgHeight,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  model.cardTitle,
                  textAlign: TextAlign.center,
                  style: TextStyles.font14Black.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
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
