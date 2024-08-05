import 'package:flutter/material.dart';

class ShopNowContainer extends StatelessWidget {
  String image, name;
  ShopNowContainer({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.48,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.48,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Price: 2K Points',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff008101),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
