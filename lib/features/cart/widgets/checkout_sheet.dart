import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/features/cart/screens/place_order.dart';

Future<dynamic> showCheckout(BuildContext context, String totalCost){
  return  showModalBottomSheet(context: context, 
    backgroundColor: AppColors.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
isScrollControlled: true,
useSafeArea: true,
    builder: (context){
      return CheckoutSheet(totalCost:totalCost);
    });
}



class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({super.key,required this.totalCost});
final String totalCost;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Checkout', style: TextStyles.font24BlackW600),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          SizedBox(height: 20,),
          const Divider(height: 1),
          const SizedBox(height: 20),
          ListTile(
            title: Text('Delivery', style: TextStyles.font18GrayW600),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               mainAxisSize: MainAxisSize.min,
                children: [
            
                 Text('Select Method', style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600)),
            
                Icon(Icons.chevron_right, color: AppColors.grey),
              ],
            ),
          ),
          const Divider(height: 20),
          ListTile(
            title: Text('Payment', style: TextStyles.font18GrayW600),
                     trailing: Row(
                         mainAxisSize: MainAxisSize.min,
          
                       mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                     
                          Image.asset(AppAssets.payCard,width: 20,height: 20,),
                     
                         Icon(Icons.chevron_right, color: AppColors.grey),
                       ],
                     ),
         ),
          const Divider(height: 20),
          ListTile(
            title: Text('Promo Code', style: TextStyles.font18GrayW600),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               mainAxisSize: MainAxisSize.min,
                children: [
            
                 Text('Pick discount', style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600)),
            
                Icon(Icons.chevron_right, color: AppColors.grey),
              ],
            ),
          ),
          const Divider(height: 20),
          ListTile(
            title: Text('Total Cost', style: TextStyles.font18GrayW600),
              trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               mainAxisSize: MainAxisSize.min,
                children: [
            
                 Text(totalCost, style: TextStyles.font16Black),
            
                Icon(Icons.chevron_right, color: AppColors.grey),
              ],
            ),
        ),
         const Divider(height: 20),
     Padding(
       padding: const EdgeInsets.all(10),
       child: RichText(text: TextSpan(
        children: [
          TextSpan(text: "By placing an order you agree to our", style: TextStyles.font18GrayW600),
        TextSpan(text: " Terms", style: TextStyles.font18BlackW600.copyWith(fontWeight: FontWeight.w600)),
        TextSpan(text: " And", style: TextStyles.font18GrayW600),
        TextSpan(text: " Conditions", style: TextStyles.font18BlackW600),
        
        ]
       )),
     ),
          const SizedBox(height: 20),
          Button(
            height: 66,
            title: 'Place Order', onpress: () {
              pushPage(context: context, newScreen: PlaceOrder());
            }),
        ],
      ),
    );
  }
}