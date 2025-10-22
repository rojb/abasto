import 'package:abasto/config/theme/app_colors.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SecondaryProductBanner extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const SecondaryProductBanner({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 193,
      width: 301,
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset(imageUrl, fit: BoxFit.cover)),
          Positioned(
            top: 52,
            right: 42,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: AppTextStyles.mainPromoCardTitle),
                Container(
                  constraints: BoxConstraints(maxWidth: 164),
                  child: Text(
                    description,
                    style: AppTextStyles.mainPromoCardDescription,
                  ),
                ),
                const SizedBox(height: 9),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                    minimumSize: const Size(98, 33),
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Comprar',
                    style: AppTextStyles.mainPromoCardButton,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
