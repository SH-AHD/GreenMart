import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/helpers/confirm_dialog.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/button.dart';
import 'package:green_mart/features/account/widgets/account_header.dart';
import 'package:green_mart/features/account/widgets/account_options.dart';
import 'package:green_mart/features/auth/Screens/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const Map<String, String> accMap = {
    'Orders': AppAssets.ordersSvg,
    'My Details': AppAssets.detailSvg,
    'Delivery Adderss': AppAssets.deliverySvg,
    'Payment Method': AppAssets.paymentMethodSvg,
    'Promo Code': AppAssets.promoSvg,
    'Notifications': AppAssets.bellSvg,
    'Help': AppAssets.helpSvg,
    'About': AppAssets.aboutSvg,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                AccountHeader(),

                SizedBox(height: 20),

                AccountOptions(accMap: accMap),
                Divider(),

                SizedBox(height: 50),

                LogoutButtonAndDialog(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoutButtonAndDialog extends StatelessWidget {
  const LogoutButtonAndDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Button(
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout, size: 25, color: AppColors.lightGreen),

          Text(
            "  Log out",
            style: TextStyles.font18BlackW600.copyWith(
              fontSize: 20,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      height: 60,
      onpress: () {
        showConfirmationDialog(
          context: context,
          title: "Log Out",
          onConfirm: () {
            pushReplacementPage(context: context, newScreen: LoginScreen());
          },
        );
      },
      title: "",
      bgcolor: AppColors.accentColor,
    );
  }
}
