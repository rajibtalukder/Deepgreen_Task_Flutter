import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  final String name;
  final IconData icon;
  const PaymentItem({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 16),
          Text(
            name,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
