import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({super.key});

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int orderedAmount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
           decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(18),
          ),
          child: IconButton(
            onPressed: () {
              if (orderedAmount > 1) {
                setState(() {
                  orderedAmount--;
                });
              }
            },
            icon: Icon(Icons.remove, color: AppColors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$orderedAmount",
            style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        Container(
      decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(18),
          ),
          child: IconButton(
            onPressed: () {
              if (orderedAmount < 10000) {
                setState(() {
                  orderedAmount++;
                });
              }
            },
            icon: Icon(Icons.add, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
