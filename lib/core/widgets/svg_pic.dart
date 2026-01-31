import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPic extends StatelessWidget {
  const SvgPic({
    super.key, required this.img, this.color,
  });
  final String img;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      img,
      colorFilter: color!=null ?ColorFilter.mode(
        color!,
        BlendMode.srcIn,
      ): null,
    );
  }
}
