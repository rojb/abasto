import 'package:abasto/presentation/pages/cart_page.dart';
import 'package:abasto/presentation/pages/checkout_page.dart';
import 'package:abasto/presentation/pages/confirmed_order_page.dart';
import 'package:abasto/presentation/pages/favorites_page.dart';
import 'package:abasto/presentation/pages/notifications_page.dart';
import 'package:abasto/presentation/pages/order_detail_page.dart';
import 'package:abasto/presentation/pages/orders_page.dart';
import 'package:abasto/presentation/pages/payment_page.dart';
import 'package:abasto/presentation/pages/profile_page.dart';
import 'package:abasto/presentation/pages/search_filter_page.dart';
import 'package:abasto/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'config/constants/app_strings.dart';
import 'config/theme/app_theme.dart';
import 'presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/home',
      routes: {
        '/home': (_) => const HomePage(),
        '/favorites': (_) => const FavoritesPage(),
        '/cart': (_) => const CartPage(),
        '/notifications': (_) => const NotificationsPage(),
        '/search': (_) => const SearchPage(),
        '/profile': (_) => const ProfilePage(),
        '/orders': (_) => const OrdersPage(),
        '/order-detail': (_) => const OrderDetailPage(),
        '/search-filter': (_) => const SearchFilterPage(),
        '/checkout': (_) => const CheckoutPage(),
        '/payment': (_) => const PaymentPage(),
        '/confirm-payment': (_) => const ConfirmedOrderPage(),
      },
      home: const HomePage(),
    );
  }
}
