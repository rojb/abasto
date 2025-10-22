import 'package:flutter/material.dart';

import '../../config/constants/app_images.dart';
import '../../config/theme/app_colors.dart';
import '../../infrastructure/models/product_model.dart';
import '../../presentation/widgets/category_banner_list.dart';
import '../widgets/products_carrousel.dart';
import '../../presentation/widgets/shared/custom_app_bar.dart';
import '../../presentation/widgets/product_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> bestSellingProducts = [
      ProductModel(
        name: "Pipocas de pollo",
        imageUrl: AppImages.logo,
        unitMeasure: "1 Kg",
        price: 15,
        discountPrice: 12,
      ),
      ProductModel(
        name: "Pollo Sofía",
        imageUrl: AppImages.logo,
        unitMeasure: "1 Kg",
        price: 12,
        discountPrice: 10,
      ),
      ProductModel(
        name: "Leche PIL",
        imageUrl: AppImages.logo,
        unitMeasure: "1 Ltr",
        price: 10,
        discountPrice: 8.99,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: CustomAppBar(),
              ),
              Container(
                decoration: BoxDecoration(color: AppColors.grey200),
                margin: EdgeInsetsGeometry.only(top: 12, bottom: 11),
                height: 1,
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: ProductsCarrousel(),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 16),
                child: CategoryBannerList(),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 16),
                child: ProductSection(
                  title: 'Productos más vendidos',
                  products: bestSellingProducts,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
