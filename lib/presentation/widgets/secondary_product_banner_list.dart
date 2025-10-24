import 'package:abasto/config/constants/app_images.dart';
import 'package:abasto/infrastructure/models/product_banner_model.dart';
import 'package:abasto/presentation/widgets/secondary_product_banner.dart';
import 'package:flutter/material.dart';

class SecondaryProductBannerList extends StatelessWidget {
  const SecondaryProductBannerList({super.key});

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
      padding: const EdgeInsets.only(top: 22),
      child: SizedBox(
        height: 196,
        child: ListView.separated(
          padding: const EdgeInsets.only(right: 14),
          scrollDirection: Axis.horizontal,
          itemCount: banners.length,
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemBuilder: (context, index) {
            final banner = banners[index];
            return SecondaryProductBanner(
              title: banner.title,
              description: banner.description,
              imageUrl: banner.imageUrl,
            );
          },
        ),
      ),
    );
  }
}
