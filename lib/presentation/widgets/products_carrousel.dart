import 'package:abasto/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:abasto/config/constants/app_images.dart';
import 'package:abasto/presentation/widgets/main_product_banner.dart';

class ProductsCarrousel extends StatefulWidget {
  const ProductsCarrousel({super.key});

  @override
  State<ProductsCarrousel> createState() => _ProductsCarrouselState();
}

class _ProductsCarrouselState extends State<ProductsCarrousel> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8),
          child: SizedBox(
            height: 237.0,
            child: PageView(
              controller: _pageController,
              padEnds: false,
              pageSnapping: true,
              children: const [
                MainProductBanner(
                  title: '70%',
                  description: 'El mejor descuento en vegetales',
                  imageUrl: AppImages.productBanner1,
                ),
                MainProductBanner(
                  title: '70%',
                  description: 'El mejor descuento en vegetales',
                  imageUrl: AppImages.productBanner1,
                ),
                MainProductBanner(
                  title: '70%',
                  description: 'El mejor descuento en vegetales',
                  imageUrl: AppImages.productBanner1,
                ),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 15,
          left: 15,
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 9,
              dotWidth: 9,
              spacing: 5,
              activeDotColor: AppColors.primary,
              dotColor: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
