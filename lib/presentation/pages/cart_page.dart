import 'package:flutter/material.dart';
import 'package:abasto/presentation/widgets/shared/custom_bottom_navbar.dart';

import '../../config/helpers/navigation.dart';
import '../widgets/cart_item.dart';
import '../widgets/price_summary.dart';
import '../widgets/shared/buy_button.dart';
import '../widgets/shared/coupon_field.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Leche Pill',
      'quantity': 1,
      'price': 15,
      'discountedPrice': 12,
      'imageUrl': null,
    },
    {
      'name': 'Yogurt',
      'quantity': 1,
      'price': 15,
      'discountedPrice': 12,
      'imageUrl': null,
    },
  ];

  final TextEditingController couponController = TextEditingController(
    text: 'gro50get',
  );

  int get totalItems =>
      cartItems.fold(0, (sum, item) => sum + item['quantity'] as int);
  double get subtotal => cartItems.fold(
    0,
    (sum, item) => sum + item['discountedPrice'] * item['quantity'],
  );
  double get delivery => 5;
  double get discount => 6;
  double get total => subtotal + delivery - discount;

  void removeItem(int index) {
    setState(() => cartItems.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'Total $totalItems',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ...cartItems.asMap().entries.map(
                (entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CartItem(
                    product: entry.value,
                    onRemove: () => removeItem(entry.key),
                  ),
                ),
              ),
              CouponField(controller: couponController),
              const SizedBox(height: 16),
              PriceSummary(
                delivery: delivery,
                discount: discount,
                total: total,
              ),
              const SizedBox(height: 16),
              const BuyButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 3,
        onTap: (index) => onBottomNavItemTapped(context, index, 3),
      ),
    );
  }
}
