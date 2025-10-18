import 'package:abasto/presentation/shared/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 18.0),
          child: Column(children: [CustomAppBar()]),
        ),
      ),
    );
  }
}
