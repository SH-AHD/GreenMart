import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/features/Shop/data/models/product_model.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';
import 'package:green_mart/features/cart/widgets/cart_item.dart';
import 'package:green_mart/features/cart/widgets/checkout_sheet.dart';

class CartScreen extends StatefulWidget {
   const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
    List<ProductModel> _cartItems=[];

  @override
  Widget build(BuildContext context) {
 _cartItems=ShopRepository().getCartProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyles.font18BlackW600,),
     centerTitle: true,
      ),
      body:  _cartItems.isEmpty
          ? Center(
              child: Text(
                "The Cart is Empty!",
                style: TextStyles.font18BlackW600,
              ),
            ) // Empty State
          :ListView.separated(
        itemCount: _cartItems.length,

        itemBuilder: (context, index){
return CartItem(
  key: ValueKey(_cartItems[index].id),
  model: _cartItems[index],
  onRemove: () {
        setState(() {});}
  );
      },
      separatorBuilder: (context, index) => Divider(),
      ),
   
   bottomNavigationBar: Padding(
     padding: const EdgeInsets.all(20),
     child: Button(title: "Go to Checkout", 
     
     height: 66,
     onpress: (){
      final currentItems = ShopRepository().getCartProducts();
     String totalCost=ShopRepository().calcTotalCost(currentItems);

     showCheckout(context, totalCost);
     }),
   ),
   
    );
  }
}
