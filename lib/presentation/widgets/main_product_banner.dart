import 'package:abasto/config/theme/app_colors.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class MainProductBanner extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const MainProductBanner({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(imageUrl, fit: BoxFit.cover)),
        Positioned(
          top: 34,
          left: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.mainPromoCardTitle),
              Container(
                constraints: BoxConstraints(maxWidth: 164),
                child: Text(
                  description,
                  style: AppTextStyles.mainPromoCardDescription,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  minimumSize: const Size(106, 35),
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
    );
  }
}
