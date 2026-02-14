import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage("https://i.pinimg.com/736x/e4/24/68/e42468348b129dff64f8360e40562c66.jpg"),
        ),
        SizedBox(width: 20),
    
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Shahd Sameh",
                  style: TextStyles.font24BlackW600.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: SvgPic(img: AppAssets.editvg),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
            Text(
              "shahd@gmail.com",
              style: TextStyles.font18GrayW600.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
