import 'package:abasto/config/theme/app_colors.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const ProductBanner({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 143,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset(imageUrl, fit: BoxFit.cover)),
            Positioned(
              top: 27,
              right: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    description,
                    style: AppTextStyles.secondaryBannerDescription,
                  ),
                  Text(title, style: AppTextStyles.secondaryBannerTitle),
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
                      style: AppTextStyles.secondaryBannerButton,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
