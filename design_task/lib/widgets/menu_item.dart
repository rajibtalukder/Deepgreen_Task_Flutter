import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final IconData icon;
  const MenuItem({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8)),
          child: Icon(icon),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 12),
          ),
        )
      ],
    );
  }
}
