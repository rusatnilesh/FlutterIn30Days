class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Android Phone",
        desc: "Apple Iphone 12 generation",
        price: 999,
        color: "#000000",
        image: "https://picsum.photos/200/300")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
