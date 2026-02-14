import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';
import 'package:green_mart/features/Shop/screens/shop_screen.dart';
import 'package:green_mart/features/account/screen/account.dart';
import 'package:green_mart/features/cart/screens/cart_screen.dart';
import 'package:green_mart/features/explore/screens/explore_screen.dart';
import 'package:green_mart/features/favoruite/screens/fav_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoruiteScreen(),
    AccountScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -5),
              blurRadius: 10,
              spreadRadius: 3,
              color: AppColors.shadowColor.withValues(alpha: 0.1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },

          items: [
            BottomNavigationBarItem(
              icon: SvgPic(img: AppAssets.storeSvg),
              activeIcon: SvgPic(
                img: AppAssets.storeSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Shope',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(img: AppAssets.exploreSvg),
              activeIcon: SvgPic(
                img: AppAssets.exploreSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(img: AppAssets.cartSvg),
              activeIcon: SvgPic(
                img: AppAssets.cartSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              label: 'Favourite',
              icon: SvgPic(img: AppAssets.favSvg),
              activeIcon: SvgPic(
                img: AppAssets.favSvg,
                color: AppColors.primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: SvgPic(img: AppAssets.userSvg),
              activeIcon: SvgPic(
                img: AppAssets.userSvg,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
