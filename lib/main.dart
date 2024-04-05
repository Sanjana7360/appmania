import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      'name': 'Avocado Salad',
      'time': '10min',
      'rating': '4.3',
      'calories': '100kcal',
      'img': 'asset/avo.jpg',
      'desc': 'Made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh herb dressing. A healthy side that’s perfect for a summer lunch or dinner!',
    },
    {
      'id': 2,
      'name': 'Fruits Salad',
      'time': '20min',
      'rating': '4.5',
      'calories': '80kcal',
      'img': 'asset/fruit.jpg',
      'desc': 'This fantastic fruit salad combines pineapple, kiwi, bananas, oranges, grapes, and berries in a sweet citrusy sauce for a colorful dessert.',
    },
    {
      'id': 3,
      'name': 'Cucumber Salad',
      'time': '15min',
      'rating': '4.9',
      'calories': '110kcal',
      'img': 'asset/cucumber.jpg',
      'desc': 'This cucumber salad recipe is made with fresh dill, onions, and a sweet and tangy vinegar dressing. It is an easy, delicious summer side dish!',
    },
    {
      'id': 4,
      'name': 'Vegetable Salad',
      'time': '5-10min',
      'rating': '4.0',
      'calories': '150kcal',
      'img': 'asset/vegetable.jpg',
      'desc': 'This Vegetable Salad recipe features mixed veggies, nuts, seeds, dried fruit and tangy feta in a lemon garlic vinaigrette.',
    },

  ];

  // List<product> list=[];
  // product? pm;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width / 2;
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
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
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
                children: [
                  Container(
                    height: 35,
                    width: 80,
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
                    height: 35,
                    width: 90,
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
                    height: 35,
                    width: 100,
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
              Row(
                children: [
                  Container(
                    height: 250,
                    width: width - 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                CupertinoIcons.heart,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage("asset/avo.jpg"),
                          ),
                        ),
                        Text(
                          'Fruits Salad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Row(
                            children: [
                              Text(
                                '20min',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
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
                                '4.5',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
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
                              '11.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 51,
                            ),
                            Container(
                              clipBehavior: Clip.none,
                              height: 33,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color(0xff5DC448),
                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                                color: Colors.white,
                                size: 14,
                              ),),
                          ],),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 250,
                          width: width - 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
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
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage("asset/avo.jpg"),
                                ),
                              ),
                              Text(
                                'Fruits Salad',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 30.0, right: 30.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '20min',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.bold),
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
                                      '4.5',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.bold),
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
                                    '11.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 51,
                                  ),
                                  Container(
                                    clipBehavior: Clip.none,
                                    height: 33,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      color: Color(0xff5DC448),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: width - 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: width - 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),),
    );
  }
}
