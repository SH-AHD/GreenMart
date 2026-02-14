import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class NutritionsTile extends StatelessWidget {
  const NutritionsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("Nutritions",style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600),),
        ),
      
      Spacer(),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    decoration: BoxDecoration(
      color: AppColors.accentColor,
    border: Border.all(color: AppColors.borderColor)
    ),
    child: Text("100 gr",
    style: TextStyles.font12Black.copyWith(color: AppColors.grey,
          fontWeight: FontWeight.w500),),
      ),
      IconButton(onPressed: (){
    
      }, icon: Icon(Icons.arrow_forward_ios,
      size:17,),
      
      ),
      ],
    );
  }
}
