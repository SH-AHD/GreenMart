import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_network_img.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/details/screens/details_screen.dart';

class FavProduct extends StatefulWidget {
  const FavProduct({
    super.key,
    required this.model,
    required this.onRefresh,
  });

  final ProductModel model;
final VoidCallback onRefresh;
  @override
  State<FavProduct> createState() => _FavProductState();
}

class _FavProductState extends State<FavProduct> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CustomNetworkImage(imageUrl:widget.model.img??"",w: 40,),
    title: Text(widget.model.title??"",style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600),),
    subtitle: Text(widget.model.amount??"", style: TextStyles.font14Black.copyWith(color: AppColors.grey),),
    trailing: SizedBox(
      width: 120,
      child: Row(
        mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.model.price??"",style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600),),
       IconButton(onPressed: (){
       
       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(model: widget.model)),
                ).then((_) {
                 widget.onRefresh(); 
                });
       
       }, icon: Icon(Icons.arrow_forward_ios, size: 18,))
      ],
      ),
    ),
    
    );
  }
}