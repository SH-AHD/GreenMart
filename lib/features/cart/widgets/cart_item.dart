import 'package:flutter/material.dart';
import 'package:green_mart/core/helpers/confirm_dialog.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_network_img.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/features/cart/widgets/item_counter.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.model, required this.onRemove});
  final ProductModel model;
  final VoidCallback onRemove;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: CustomNetworkImage(imageUrl: widget.model.img ?? ""),
            ),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.title ?? "",
                    style: TextStyles.font16Black.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
      
                  Text(
                    widget.model.amount ?? "",
                    style: TextStyles.font14Black.copyWith(color: AppColors.grey),
                  ),
                  SizedBox(height: 10),
                  ItemCounter(onAmountChanged: (newAmount){
                    widget.model.quantity=newAmount;
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      showConfirmationDialog(
                        context: context,
                        title: "Remove this item",
                        onConfirm: () {
                          setState(() {
                            ShopRepository().removeFromCart(widget.model);
                            widget.onRemove();
                            print(
                              "removed!, len: ${ShopRepository().getCartProducts().length}",
                            );
                          });
                        },
                      );
                    },
                    icon: Icon(Icons.close, color: AppColors.grey),
                  ),
      
                  SizedBox(height: 10),
                  Text(
                    widget.model.price!,
                    style: TextStyles.font18BlackW600.copyWith(fontSize: 22),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
