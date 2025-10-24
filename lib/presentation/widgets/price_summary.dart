import 'package:flutter/material.dart';

class PriceSummary extends StatelessWidget {
  final double delivery;
  final double discount;
  final double total;

  const PriceSummary({
    super.key,
    required this.delivery,
    required this.discount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow('Cargo de delivery', 'Bs${delivery.toStringAsFixed(0)}'),
        _buildRow(
          'Descuento',
          '-Bs${discount.toStringAsFixed(0)}',
          color: Colors.grey,
        ),
        _buildRow(
          'Precio total',
          'Bs${total.toStringAsFixed(0)}',
          isBold: true,
        ),
      ],
    );
  }

  Widget _buildRow(
    String title,
    String value, {
    bool isBold = false,
    Color? color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: color ?? Colors.black, fontSize: 15),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: color ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
