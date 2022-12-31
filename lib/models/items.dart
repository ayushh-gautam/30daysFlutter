
class CatalogItem{
static final items = [
  Item(
      id: '0001',
      name: 'Ayush Gautam',
      description: 'Hehe This is me',
      price: 200,
      color: 'red',
      image: 'https://avatars.githubusercontent.com/u/96560085?v=4'),
];


}



class Item {



  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}

