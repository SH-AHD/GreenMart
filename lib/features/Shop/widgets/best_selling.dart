import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/Shop/widgets/item_card.dart';

class BestSellingList extends StatelessWidget {
  const BestSellingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best Selling", style: TextStyles.font24BlackW600),
            TextButton(
              onPressed: (){

              },

              child: Text("See all",
              style: TextStyles.font14Black.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            ),
          ],
        ),
        SizedBox(height: 20),
      
        SizedBox(
          height: 270,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            return   SizedBox(
            width: 180,
            child: ItemCard(),
            
          );},
          separatorBuilder: (context,index){
            return SizedBox(height: 20,);
          }, itemCount: 4),
        )
      ],
    );
  }
}
