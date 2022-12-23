import 'package:flutter/material.dart';
class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
                height: height / 5,
                width: width / 4.5,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal:8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      height: height / 6,
                      width: width / 14,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://media.istockphoto.com/id/835903320/photo/baked-chicken-wings-with-sesame-seeds-and-sweet-chili-sauce-on-white-wooden-board.jpg?s=1024x1024&w=is&k=20&c=RapMulhM2ic5esTznQzsuhBGPgJlfi57-nnPsDrovWA=',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                    
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  height: height / 13,
                                  width: 2,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Chicken Masala',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text('53.2 kcal',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  Theme.of(context).primaryColor)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height:height/16),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(right:6),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.egg_outlined, size: 18,color:Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(right:6),
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.child_care, size: 18,color:Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(right:6),
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.add_alarm, size: 18,color:Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(right:6),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.ac_unit, size: 18,color:Colors.white),
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ));
  }
}