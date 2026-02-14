import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/explore/data/cat_repo.dart';

class CatProductsScreen extends StatelessWidget {
  const CatProductsScreen({super.key, 
  required this.categoryName,
  this.offerOrBestProducts,
  });

  final String categoryName;
final List<ProductModel>? offerOrBestProducts;

  @override
  Widget build(BuildContext context) {
    List<ProductModel> catProducts =offerOrBestProducts??ShopRepository().getCatProducts(CatRepo().getCategoryId(categoryName));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(categoryName, style: TextStyles.font18BlackW600),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(onPressed: (){
            
            }, icon: const SvgPic(img: AppAssets.settingsSvg)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
               return SizedBox(
                      width: 180,
                      child: ItemCard(model: catProducts[index]),
                    );
        
          },
          itemCount: catProducts.length,
        ),
      ),
    );
  }
}
