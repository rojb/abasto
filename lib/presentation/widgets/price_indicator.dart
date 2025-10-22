import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:abasto/config/theme/app_text_styles.dart';

class PriceIndicator extends StatelessWidget {
  final double price;
  final double discountPrice;
  const PriceIndicator({
    super.key,
    required this.price,
    required this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##");
    return Container(
      child: (discountPrice > 0)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Bs ${formatter.format(price)}",
                  style: AppTextStyles.productCardOldPrice,
                ),
                Text(
                  "Bs ${formatter.format(discountPrice)}",
                  style: AppTextStyles.productCardPrice,
                ),
              ],
            )
          : Text(
              "Bs ${formatter.format(price)}",
              style: AppTextStyles.productCardPrice,
            ),
    );
  }
}
