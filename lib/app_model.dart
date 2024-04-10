class appmodel {
  final int? id;
  final String? name, time, rating, calories, img, desc;
  final double? price;

  appmodel(
      {required this.id,
      required this.name,
      required this.time,
      required this.rating,
      required this.price,
      required this.calories,
      required this.img,
      required this.desc});

  factory appmodel.fromMap(Map map) {
    return appmodel(
        id: map['id'],
        name: map['name'],
        time: map['time'],
        rating: map['rating'],
        price: map['price'],
        calories: map['calories'],
        img: map['img'],
        desc: map['desc']);
  }
}
