import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  const CustomNetworkImage({ 
    super.key,
    required this.imageUrl, 
    this.h,this.w,
    this.fit,
    });
final double? h;
final double? w;
final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: w??double.infinity,
      height: h,
      errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
    fit: fit,
    );
  }

  Widget _buildPlaceholder() => Container(
    height: 100,
    color: AppColors.accentColor,
    child: const Center(
      child: Icon(
        Icons.error_outline, 
        color: AppColors.errorColor,
        size: 30,
      ),

    ),

  );
}