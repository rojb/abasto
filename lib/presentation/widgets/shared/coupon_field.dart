import 'package:flutter/material.dart';

class CouponField extends StatelessWidget {
  final TextEditingController controller;

  const CouponField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: 'Código de cupón',
        labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: const Icon(Icons.check_circle, color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
