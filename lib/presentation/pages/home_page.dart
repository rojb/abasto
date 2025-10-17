import 'package:flutter/material.dart';
import '../../config/constants/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appName)),
      body: Center(child: const Text("Hello from flutter")),
    );
  }
}
