import 'package:design_task/widgets/food_item.dart';
import 'package:design_task/widgets/order_item.dart';
import 'package:flutter/material.dart';

class LeftScreen extends StatelessWidget {
  const LeftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<String> names = [
      'Croisstant',
      'Coffee',
      'Ice Cream',
      'Waffle',
      'Croisstant',
      'Coffee',
      'Ice Cream',
      'Signature',
      'Croisstant',
      'Coffee',
      'Ice Cream',
      'Signature',
      'Croisstant',
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
              height: 540,
              width: width / 1.3,
              color: Colors.grey.shade100,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Section 1 start from here...
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: width / 80,
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Welcome, Jhon',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text(
                                  '12:14 AM | 22 July',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: width / 6,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              width: width / 6,
                              height: height / 20,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Icon(
                                        Icons.search,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Search Item',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: width / 6,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(5),

                                //height: 32,
                                //width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(Icons.notifications_none),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(5),

                                //height: 32,
                                //width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.dark_mode_outlined,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(5),
                                //height: 32,
                                //width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(Icons.menu),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(5),
                                //height: 32,
                                //width: 32,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    //Section 2 starts from here....!

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(right: 16),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(6)),
                            child: const Text('Signature',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 60,
                            width: width / 1.7,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: names.length,
                                itemBuilder: ((context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 10, 16, 10),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Text(names[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  );
                                })),
                          ),
                          SizedBox(width: width / 30),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),

                    //section 3 starts from here...!

                    SizedBox(
                      height: 420,
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: (1 / .42),
                          ),
                          itemCount: 9,
                          itemBuilder: ((context, index) => const FoodItem())),
                    )

                    //FoodItem()
                  ],
                ),
              )),

          //section 4 starts from here.....!

          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 60,
                    //width:width/7,
                    margin: const EdgeInsets.only(right: 16, left: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Theme.of(context).primaryColor),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.shopping_bag,
                              size: 32, color: Theme.of(context).primaryColor),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('TAKEWAY',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Table: N/A',
                                style: TextStyle(
                                  fontSize: 8,
                                )),
                            Text('Status: Out Of Delivery',
                                style: TextStyle(
                                  fontSize: 8,
                                ))
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 70,
                  width: width / 1.7,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 16, 10),
                          child: Container(
                              height: 60,
                              margin: const EdgeInsets.only(right: 16),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  // border:Border.all(width:1, color:Theme.of(context).primaryColor),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        size: 32,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('TAKEWAY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('Table: N/A',
                                            style: TextStyle(
                                              fontSize: 8,
                                            )),
                                        Text('Status: Out Of Delivery',
                                            style: TextStyle(
                                              fontSize: 8,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        );
                      })),
                ),
              ],
            ),
          ),

          //section 5 starts from here...!
          Container(
            height: 3,
            width: width / 1.35,
            margin: const EdgeInsets.only(left: 15),
            color: Colors.grey.shade300,
          ),

          Row(
            children: const [
            OrderItem(icon: Icons.shopping_bag_outlined, orderName: 'Order Details'),
            OrderItem(icon: Icons.cancel_outlined, orderName: 'Cancel Order'),
            OrderItem(icon: Icons.edit, orderName: 'Edit Order'),
            OrderItem(icon: Icons.shopping_bag_outlined, orderName: 'Kitchen Status'),

            ],
          ),
        ],
      ),
    );
  }
}
