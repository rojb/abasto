import 'package:flutter/material.dart';

void onBottomNavItemTapped(BuildContext context, int index, int currentIndex) {
  if (index == currentIndex) return;

  switch (index) {
    case 0:
      Navigator.pushReplacementNamed(context, '/home');
      break;
    case 1:
      Navigator.pushReplacementNamed(context, '/search');
      break;
    case 2:
      Navigator.pushReplacementNamed(context, '/favorites');
      break;
    case 3:
      Navigator.pushReplacementNamed(context, '/cart');
      break;
    case 4:
      Navigator.pushReplacementNamed(context, '/profile');
      break;
  }
}
