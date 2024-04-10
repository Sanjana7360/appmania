import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_model.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> product = [
    {
      'id': 1,
      'name': 'Avocado salad',
      'time': '10min',
      'rating': '4.3',
      'price': 11.00,
      'calories': '100kcal',
      'img': 'asset/avo.jpg',
      'desc':
          'Made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh herb dressing. A healthy side that’s perfect for a summer lunch or dinner!',
    },
    {
      'id': 2,
      'name': 'Fruits salad',
      'time': '20min',
      'rating': '4.5',
      'price': 15.50,
      'calories': '80kcal',
      'img': 'asset/fruit.jpg',
      'desc':
          'This fantastic fruit salad combines pineapple, kiwi, bananas, oranges, grapes, and berries in a sweet citrusy sauce for a colorful dessert.',
    },
    {
      'id': 3,
      'name': 'Cucumber salad',
      'time': '15min',
      'rating': '4.9',
      'price': 10.00,
      'calories': '110kcal',
      'img': 'asset/cucumber.jpg',
      'desc':
          'This cucumber salad recipe is made with fresh dill, onions, and a sweet and tangy vinegar dressing. It is an easy, delicious summer side dish!',
    },
    {
      'id': 4,
      'name': 'Vegetable salad',
      'time': '10min',
      'rating': '4.0',
      'price': 12.25,
      'calories': '150kcal',
      'img': 'asset/vegetable.jpg',
      'desc':
          'This Vegetable Salad recipe features mixed veggies, nuts, seeds, dried fruit and tangy feta in a lemon garlic vinaigrette.',
    },
  ];

  List<appmodel> list = [];

  @override
  void initState() {
    for (int i = 0; i < product.length; i++) {
      appmodel am = appmodel.fromMap(product[i]);
      setState(() {
        list.add(am);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on_rounded),
            SizedBox(
              height: 15,
            ),
            Text(
              'Hobiganj City',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade200),
              child: Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'Find the',
                      style: TextStyle(fontSize: 40, color: Colors.black),
                      children: [
                    TextSpan(
                        text: ' Best\nFood ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Around You')
                  ])),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        CupertinoIcons.search,
                        size: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Search your favourite food',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.filter_list_rounded,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Find',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 22,
                    // color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.5),
                      child: Row(
                        children: [
                          Text(
                            '5km',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepOrange,
                            ),
                          ),
                          //SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Icon(
                              CupertinoIcons.right_chevron,
                              size: 10,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Color(0xff5DC448),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Salads',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Hot sale',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Popularity',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    ...list
                        .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailsScreen(
                                            name: e.name!,
                                            time: e.time!,
                                            rating: e.rating!,
                                            price: e.price!,
                                            calories: e.calories!,
                                            img: e.img!,
                                            desc: e.desc!,
                                          )));
                            },
                            child: Container(
                              height: 250,
                              width: width - 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius:
                                      BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8.0, top: 8.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          CupertinoIcons.heart,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0),
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundImage: AssetImage(e.img!),
                                    ),
                                  ),
                                  Text(
                                    e.name!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, right: 30.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          e.time!,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey.shade500,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          CupertinoIcons.star,
                                          color: Colors.amber,
                                          size: 12,
                                        ),
                                        Text(
                                          e.rating!,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey.shade500,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        size: 20,
                                      ),
                                      Text(
                                        e.price.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // SizedBox(
                                      //   width: 61.3,
                                      // ),
                                      Spacer(),
                                      InkWell(
                                        onTap: (){
                                          DetailModel cart = DetailModel(
                                              id: e.id!,
                                              name: e.name!,
                                              time: e.time!,
                                              rating: e.rating!,
                                              price: e.price!,
                                              calories: e.calories!,
                                              img: e.img!,
                                              desc: e.desc!,
                                              qty: 1);
                                        },

                                        child: Container(
                                          clipBehavior: Clip.none,
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft:
                                                Radius.circular(15),
                                                bottomRight:
                                                Radius.circular(15)),
                                            color: Color(0xff5DC448),
                                          ),
                                          child: Icon(
                                            CupertinoIcons.plus,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ))
                        .toList(),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailModel {
  final int id;
  final String name;
  final String time;
  final String rating;
  final double price;
  final String calories;
  final String img;
  final String desc;
  final int qty;

  DetailModel(
      {required this.qty,
      required this.id,
      required this.name,
      required this.time,
      required this.rating,
      required this.price,
      required this.calories,
      required this.img,
      required this.desc}) {}
}

List<DetailModel> DetailList = [];
