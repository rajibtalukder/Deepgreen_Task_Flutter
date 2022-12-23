import 'package:flutter/material.dart';

class ItemCount extends StatelessWidget {
  final String name;
  const ItemCount({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          // SizedBox(width: width / 48),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Container(
                    width: width / 70,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(4)),
                    child: const Icon(Icons.minimize, size: 16)),
              ),
               Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: SizedBox(
                width: width / 70,
                height: 18,
                // decoration: BoxDecoration(
                //       color: Colors.grey.shade100,
                //       borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  '12',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Container(
                width: width / 70,
                height: 18,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(4)),
                child: const Icon(Icons.add, size: 16)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: SizedBox(
                width: width / 70,
                height: 18,
                // decoration: BoxDecoration(
                //       color: Colors.grey.shade100,
                //       borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  '5.0',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: SizedBox(
                width: width / 70,
                height: 18,
                // decoration: BoxDecoration(
                //       color: Colors.grey.shade100,
                //       borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  '12',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: SizedBox(
                width: width / 70,
                height: 18,
                // decoration: BoxDecoration(
                //     color: Colors.grey.shade100,
                //     borderRadius: BorderRadius.circular(4)),
                child: Icon(
                  Icons.delete,
                  size: 16,
                  color: Theme.of(context).primaryColor,
                )),
          ),
            ],
          ),
         
        ],
      ),
    );
  }
}
