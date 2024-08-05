import 'package:flutter/material.dart';
import 'package:flutterh_task/componenets/latest_task_contianer.dart';
import 'package:flutterh_task/componenets/shop_now_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff01C000),
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.notification_add,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/sale.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/sale.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/sale.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.08,
                width: MediaQuery.sizeOf(context).height * 1,
                decoration: BoxDecoration(
                    color: Color(
                      0xff01C000,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Points',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Purchase vouchers using your points',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Row(
                        children: [
                          Text(
                            '11,450',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage('assets/dm.png'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.08,
                width: MediaQuery.sizeOf(context).height * 1,
                decoration: BoxDecoration(
                    color: Color(
                      0xffFF996C,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/ms.png'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Purchase Membership & Get Discounts ',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Task',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'View all ->',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LatestTaskContianer(
                      title: 'Steps Milestone',
                      desp: 'Reach 10,000 steps in\n a day.',
                      points: '100 Points.',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    LatestTaskContianer(
                      title: 'Bike to Work',
                      desp: 'Upload a photo of\n biking to work.',
                      points: '75 Points Per Day.',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    LatestTaskContianer(
                      title: 'Steps Milestone',
                      desp: 'Reach 10,000 steps in\n a day.',
                      points: '100 Points.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop Now ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'View all ->',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShopNowContainer(
                        image: 'assets/shoes.png', name: 'Adidas Joggers '),
                    SizedBox(
                      width: 8,
                    ),
                    ShopNowContainer(
                        image: 'assets/shirt.png', name: 'Puma Jacket '),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
