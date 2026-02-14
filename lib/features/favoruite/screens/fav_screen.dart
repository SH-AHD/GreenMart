import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/features/favoruite/widgets/fav_product.dart';

class FavoruiteScreen extends StatefulWidget {
  const FavoruiteScreen({super.key});

  @override
  State<FavoruiteScreen> createState() => _FavoruiteScreenState();
}

class _FavoruiteScreenState extends State<FavoruiteScreen> {
  @override
  Widget build(BuildContext context) {
    final List<ProductModel> favItems = ShopRepository().getFavProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favoruite",
          style: TextStyles.font24BlackW600.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),

      body: favItems.isEmpty
          ? Center(
              child: Text(
                "No favorites yet!",
                style: TextStyles.font18BlackW600,
              ),
            ) // Empty State
          : ListView.separated(
              itemCount: favItems.length,

              itemBuilder: (context, index) {
                return FavProduct(
                  onRefresh: () {
                     if (mounted) 
              {setState(() {});}
                  },
                  key: ValueKey(favItems[index].id),model: favItems[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
            ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Button(
          title: "Add All To Cart",
          onpress: () {
            for (var prod in favItems) {
              ShopRepository().addToCart(prod);
            }
          },
        ),
      ),
    );
  }
}
