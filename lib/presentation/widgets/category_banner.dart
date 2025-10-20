import 'package:abasto/config/helpers/color_method.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBanner extends StatelessWidget {
  final String bgColor;
  final String name;
  final String iconPath;
  const CategoryBanner({
    super.key,
    required this.bgColor,
    required this.name,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorMethod.colorFromHex(bgColor),
            shape: BoxShape.circle,
          ),

          height: 65,
          width: 65,
          child: Center(
            child: SvgPicture.asset(iconPath, width: 41, height: 38),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Text(name, style: AppTextStyles.categoryBannerTitle),
        ),
      ],
    );
  }
}
