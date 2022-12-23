import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String orderName;
  final IconData icon;
  const OrderItem({super.key, required this.icon, required this.orderName});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(15, 8, 0, 0),
      width: width / 5.8,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 12,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(orderName,
                style: const TextStyle(fontSize: 12, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
