import 'package:abasto/config/theme/app_colors.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:abasto/presentation/widgets/price_indicator.dart';
import 'package:flutter/material.dart';

class MainPageProductCard extends StatelessWidget {
  final String imageUrl;
  final String unitMeasure;
  final String name;
  final double price;
  final double discountPrice;

  const MainPageProductCard({
    super.key,
    required this.imageUrl,
    required this.unitMeasure,
    required this.name,
    required this.price,
    this.discountPrice = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(
          color: AppColors.grey300,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            height: 120,
            width: 136,
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 5),
            child: Text(unitMeasure, style: AppTextStyles.productCardTitle),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 4),
            child: Text(name, style: AppTextStyles.productCardName),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,

                    textStyle: AppTextStyles.productCardButton,
                    minimumSize: const Size(70, 25),
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Agregar'),
                ),
                PriceIndicator(price: price, discountPrice: discountPrice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
