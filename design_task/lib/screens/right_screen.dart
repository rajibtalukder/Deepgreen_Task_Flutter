import 'package:design_task/widgets/item_count.dart';
import 'package:design_task/widgets/payment_item.dart';
import 'package:flutter/material.dart';

class RightScreen extends StatelessWidget {
  const RightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: height,
        width: width - width / 1.3,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Section 1 starts from here....!
        
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 34.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.dinner_dining_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'DINE IN',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.takeout_dining_outlined),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'TAKE WAY',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.shopping_bag_outlined),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'DELIVERY',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.table_bar_outlined),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'TABLE',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
        
              //Section 2 starts from here....!
              Container(
                  height: 42,
                  width: width / 5,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 28,
                            width: width / 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Amirul Haque',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.arrow_drop_down_sharp),
                                ],
                              ),
                            )),
                        Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Icon(Icons.edit, size: 14)),
                        Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Icon(Icons.add, size: 14))
                      ],
                    ),
                  )),
        
              //Section 3 starts from here...!
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Text('Description',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold)),
                          SizedBox(width: width / 15),
                          const Text('Qty',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold)),
                          SizedBox(width: width / 34),
                          const Text('Rate',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold)),
                          SizedBox(width: width / 56),
                          const Text('Total',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const ItemCount(name: 'Chicken Roast'),
                    Row(
                      children: [
                        Container(
                            height: 20,
                            width: width / 14,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: const Text(
                              'Ice Creame 2 x 1.5',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(width: 6),
                        Container(
                            height: 20,
                            width: width / 14,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: const Text(
                              'Cheese 2 x 1.5',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    const ItemCount(name: 'Chowmin'),
                    const ItemCount(name: 'Chicken Mas'),
                    const ItemCount(name: 'Pasta'),
                    Container(
                        height: 20,
                        width: width / 14,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: const Text(
                          'Cheese 2 x 1.5',
                          style:
                              TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                        )),
        
                    //section 4 starts from here....!
        
        
                    const SizedBox(height: 50),
                    Container(
                        height: 90,
                        padding: const EdgeInsets.all(12.0),
                        //width:width/8,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Sub Total',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold)),
                                Text('\$20',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Service',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold)),
                                Text('\$5',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Discount',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold)),
                                Text('\$10',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Due',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700)),
                                Text('\$15',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        )),
        
                        //section 5 starts from here....!!
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 54,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.done, color: Colors.white, size:16),
                                      Text('Order', style: TextStyle(color:Colors.white, fontSize: 10),),
                                    ],
                                  ),
                              ),
                               const PaymentItem(name:'Pay', icon:Icons.credit_card),
                               const PaymentItem(icon: Icons.print, name: 'Print'),
                            ],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                               PaymentItem(icon: Icons.safety_divider_outlined, name: 'Discount'),
                               PaymentItem(icon: Icons.add, name: 'Add Misc'),
                               PaymentItem(icon: Icons.delete_outline, name: 'Delete'),
                            ],
                          ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
