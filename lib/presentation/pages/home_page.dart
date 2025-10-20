import 'package:abasto/presentation/widgets/category_banner_list.dart';
import 'package:abasto/presentation/widgets/shared/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';
import '../widgets/products_carrousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
