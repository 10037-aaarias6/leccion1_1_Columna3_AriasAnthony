import 'package:flutter/material.dart';

class NumberInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  NumberInputWidget({required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
