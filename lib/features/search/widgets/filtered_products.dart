import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';

class FilteredProducts extends StatelessWidget {
  final List<ProductModel> catProducts;
  const FilteredProducts({super.key, required this.catProducts});

  @override
  Widget build(BuildContext context,) {
    return GridView.builder(
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
        );
  }
}