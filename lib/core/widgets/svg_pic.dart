import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPic extends StatelessWidget {
  const SvgPic({
    super.key, required this.img, this.color,this.height,
  });
  final String img;
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      img,
      height: height,
      colorFilter: color!=null ?ColorFilter.mode(
        color!,
        BlendMode.srcIn,
      ): null,
    );
  }
}
