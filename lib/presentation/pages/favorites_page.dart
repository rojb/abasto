import 'package:flutter/material.dart';
import 'package:abasto/presentation/widgets/shared/custom_bottom_navbar.dart';

import '../../config/helpers/navigation.dart';
import '../widgets/cart_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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

  void removeItem(int index) {
    setState(() => cartItems.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'Total ${cartItems.length}',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
        onTap: (index) => onBottomNavItemTapped(context, index, 2),
      ),
    );
  }
}
