import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class AmountCounter extends StatefulWidget {
  final Function(int) onAmountChanged;
 const AmountCounter({super.key, required this.onAmountChanged});

  @override
  State<AmountCounter> createState() => _AmountCounterState();
}



class _AmountCounterState extends State<AmountCounter> {
   int orderedAmount=1;
  @override
  Widget build(BuildContext context) {
    return    Row(
    children: [
      IconButton(onPressed: (){
        if(orderedAmount>1){
          setState(() {
        orderedAmount--;
        widget.onAmountChanged(orderedAmount);
      });
        }
              

      }, icon: Icon(Icons.remove, color: AppColors.grey,),),
   
   Container(

    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(18)
    ),
    child: Text("$orderedAmount", style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.bold),),
    ),
    IconButton(onPressed: (){
      if(orderedAmount<10000){
        setState(() {
        
orderedAmount++;
widget.onAmountChanged(orderedAmount);
      });
      }

      }, icon: Icon(Icons.add, color: AppColors.primaryColor,),),
   
    ],
   );
  }
}