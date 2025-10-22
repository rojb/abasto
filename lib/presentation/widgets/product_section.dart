import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../infrastructure/models/product_model.dart';
import '../../presentation/widgets/main_page_product_card.dart';

class ProductSection extends StatelessWidget {
  final List<ProductModel> products;
  final String title;
  const ProductSection({
    super.key,
    this.products = const [],
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.mainSectionHeadline),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Ver todos",
                  style: AppTextStyles.mainSectionOption,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,

          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(width: 7),
            itemBuilder: (context, index) {
              final product = products[index];
              return MainPageProductCard(
                name: product.name,
                imageUrl: product.imageUrl,
                price: product.price,
                unitMeasure: product.unitMeasure,
                discountPrice: product.discountPrice,
              );
            },
          ),
        ),
      ],
    );
  }
}
