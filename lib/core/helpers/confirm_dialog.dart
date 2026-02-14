import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

void showConfirmationDialog({ required BuildContext context,required String title,required VoidCallback onConfirm}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title:  Text(title),
        content: Text("Are you sure you want to ${title.toLowerCase()} ?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel", style: TextStyle(color: AppColors.grey)),
          ),
         
          TextButton(
            onPressed: () {
             
              Navigator.pop(context);
onConfirm();
             },
            child: Text("Yes, ${title.toLowerCase()}", style: TextStyle(color: Colors.red)),
          ),
        ],
      );
    },
  );
}