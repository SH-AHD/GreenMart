
import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/app_fonts.dart';
import 'package:green_mart/core/styles/text_styles.dart';

abstract class AppThemes{

static ThemeData get lightTheme => ThemeData(
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          onSurface: AppColors.black,
          seedColor: AppColors.primaryColor,
        ),
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
      foregroundColor: AppColors.black,
        ),
        dividerColor: Colors.transparent,
        dividerTheme: DividerThemeData(color: AppColors.borderColor),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.grey,

          selectedLabelStyle: TextStyles.font14Black.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.8,
          ),
          unselectedLabelStyle: TextStyles.font14Black.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.8,
          ),
        ),

        inputDecorationTheme:  InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade200,
          hintStyle: TextStyles.font14Black.copyWith(color: AppColors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: AppColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: AppColors.primaryColor.withAlpha(200),
            ),
          ),

          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.errorColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.errorColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: AppColors.borderColor),
          ),
        ),
      );

    

}