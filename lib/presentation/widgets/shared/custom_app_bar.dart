import 'package:abasto/config/constants/app_icons.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:abasto/presentation/widgets/shared/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 6.9,
                    children: [
                      Text(
                        'Tu ubicación',
                        style: AppTextStyles.currentAddressTitle,
                      ),
                      SvgPicture.asset(AppIcons.pencil),
                    ],
                  ),
                  Text('Los Cusis #4', style: AppTextStyles.currentAddressBody),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.notification),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.cart),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CustomDropdownButton(
              initialValue: 'Categoría',
              items: ['Carne', 'Pollo', 'Pescado'],
              onChanged: (_) {},
            ),
          ],
        ),
      ],
    );
  }
}
