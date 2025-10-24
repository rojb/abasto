import 'package:flutter/material.dart';

class CartSummary extends StatelessWidget {
  final double delivery;
  final double discount;
  final double total;

  const CartSummary({
    super.key,
    required this.delivery,
    required this.discount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow('Cargo de delivery', 'Bs${delivery.toStringAsFixed(2)}'),
        _buildRow('Descuento', '-Bs${discount.toStringAsFixed(2)}'),
        const Divider(),
        _buildRow(
          'Precio total',
          'Bs${total.toStringAsFixed(2)}',
          isBold: true,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _buildRow(
    String label,
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
            label,
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: color ?? Colors.grey[800],
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
