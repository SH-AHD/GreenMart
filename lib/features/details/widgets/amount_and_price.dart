import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/details/widgets/amount_counter.dart';

class AmountAndPrice extends StatelessWidget {
  const AmountAndPrice({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     AmountCounter(),
     Text(model.price??'--',style: TextStyles.font18BlackW600.copyWith(fontSize: 20),),
      
      ],
    );
  }
}
