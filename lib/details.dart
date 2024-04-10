import 'package:appmania_sanjana/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String name;
  final String time;
  final String rating;
  final double price;
  final String calories;
  final String img;
  final String desc;

  const ProductDetailsScreen({super.key,
    required this.name,
    required this.time,
    required this.rating,
    required this.price,
    required this.calories,
    required this.img,
    required this.desc});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int counter = 1;

  void pluspro() {
    setState(() {
      counter++;
    });
  }

  void minuspro() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5DC448),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff5DC448),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height-150,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff5DC448),
                              borderRadius: BorderRadius.circular(60)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: InkWell(
                                      onTap: () {
                                        if (counter > 0) {
                                          minuspro();
                                        }
                                      },
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                        size: 17,
                                      )),
                                ),
                                Text(
                                  counter.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: InkWell(
                                      onTap: () {
                                        pluspro();
                                      },
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                        size: 17,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        widget.name,
                        style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.desc,
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text('⭐ ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text(
                                    widget.rating,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('🔥 ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text(
                                    widget.calories,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('⏰ ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text(
                                    widget.time,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ingredients',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                                child: Text(
                                  '🧅',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                                child: Text(
                                  '🍅',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                                child: Text(
                                  '️🫒',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                                child: Text(
                                  '🥑',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                                child: Text(
                                  '🌿',
                                  style: TextStyle(fontSize: 18),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          CartModel cart = CartModel(counter: counter,
                              name: widget.name,
                              time: widget.time,
                              rating: widget.rating,
                              price: widget.price,
                              calories: widget.calories,
                              img: widget.img,
                              desc: widget.desc);
                          CartList.add(cart);
                          print(CartList.length);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartPage()));
                        },
                        child: Container(
                          height: 60,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Color(0xff5DC448),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height-280,
              left: MediaQuery.of(context).size.width/4,
              child: Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade300,
                      spreadRadius: 15,
                      blurRadius: 50,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                        widget.img,
                      ),
                      fit: BoxFit.fitHeight),
                ),
              ),
            )
          ],
          clipBehavior: Clip.none,
        ),
      ),
    );
  }
}

class CartModel {

  final String name;
  final String time;
  final String rating;
  final double price;
  final String calories;
  final String img;
  final String desc;
  final int counter;

  CartModel({required this.counter,

    required this.name,
    required this.time,
    required this.rating,
    required this.price,
    required this.calories,
    required this.img,
    required this.desc}) {}
}

List<CartModel> CartList = [];
