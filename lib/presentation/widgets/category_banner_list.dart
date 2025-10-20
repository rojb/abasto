import 'package:abasto/config/constants/app_icons.dart';
import 'package:abasto/infrastructure/models/category_model.dart';
import 'package:abasto/presentation/widgets/category_banner.dart';
import 'package:flutter/material.dart';

class CategoryBannerList extends StatelessWidget {
  const CategoryBannerList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryModel(
        bgColor: '#E1FFD9',
        name: 'Frutas',
        iconPath: AppIcons.fruits,
      ),
      CategoryModel(
        bgColor: '#FFDEDC',
        name: 'Vegetales',
        iconPath: AppIcons.veggies,
      ),
      CategoryModel(
        bgColor: '#DFF1FF',
        name: 'Granos',
        iconPath: AppIcons.flour,
      ),
      CategoryModel(
        bgColor: '#FFD8ED',
        name: 'Carnes',
        iconPath: AppIcons.meats,
      ),
      CategoryModel(bgColor: '#E1E9FC', name: 'Huevo', iconPath: AppIcons.eggs),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: SizedBox(
        height: 90,
        child: ListView.separated(
          padding: const EdgeInsets.only(right: 16),

          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemBuilder: (context, index) {
            final category = categories[index];

            return CategoryBanner(
              bgColor: category.bgColor,
              name: category.name,
              iconPath: category.iconPath,
            );
          },
        ),
      ),
    );
  }
}
