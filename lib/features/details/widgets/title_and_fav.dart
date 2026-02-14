import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';

class TitleAndFav extends StatefulWidget {
  const TitleAndFav({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  State<TitleAndFav> createState() => _TitleAndFavState();
}

class _TitleAndFavState extends State<TitleAndFav> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text(widget.model.title??'Untitled',style: TextStyles.font18BlackW600.copyWith(fontSize: 20),),
             Text(widget.model.amount??'-',
    style: TextStyles.font16Black.copyWith(color: AppColors.grey,
    fontWeight: FontWeight.w500),),
    
          ],
        ),
    IconButton(onPressed: (){
      setState(() {
        ShopRepository().toggleFavorite(widget.model);
      });
    }, 
    icon: Icon(ShopRepository().isFavorite(widget.model)?Icons.favorite :Icons.favorite_border ,color:ShopRepository().isFavorite(widget.model)? AppColors.errorColor:AppColors.grey,),),
    
      ],
    );
  }
}
