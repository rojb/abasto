import 'package:abasto/config/constants/app_images.dart';
import 'package:abasto/infrastructure/models/product_banner_model.dart';
import 'package:abasto/presentation/widgets/product_banner.dart';
import 'package:flutter/material.dart';

class ProductBannerList extends StatelessWidget {
  const ProductBannerList({super.key});

  @override
  Widget build(BuildContext context) {
    final banners = [
      ProductBannerModel(
        title: 'Vegetales',
        description: '50% Desc.',
        imageUrl: AppImages.cinnamonBanner,
      ),
      ProductBannerModel(
        title: 'Granos',
        description: '20% Desc.',
        imageUrl: AppImages.cinnamonBanner,
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 22, right: 14, bottom: 70),
      child: Column(
        spacing: 14,
        children: [
          ProductBanner(
            title: banners[0].title,
            description: banners[0].description,
            imageUrl: banners[0].imageUrl,
          ),
          ProductBanner(
            title: banners[1].title,
            description: banners[1].description,
            imageUrl: banners[1].imageUrl,
          ),
        ],
      ),
    );
  }
}
