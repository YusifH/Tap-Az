
List<CategoryModel> category =[
  CategoryModel(name: 'Kataloq', asset: "assets/icons/categories.png"),
  CategoryModel(name: 'Uşaq aləmi', asset: 'assets/icons/baby-carriage.png'),
  CategoryModel(name: 'Mağazalar', asset: 'assets/icons/shops.png'),
  CategoryModel(name: 'Şəxsi əşyalar', asset: 'assets/icons/woman-clothes.png'),
  CategoryModel(name: 'Ev və bağ üçün', asset: 'assets/icons/home.png'),
  CategoryModel(name: 'Elektronika', asset: 'assets/icons/electric.png'),
  CategoryModel(name: 'Heyvanlar', asset: 'assets/icons/animal.png'),
  CategoryModel(name: 'Nəqliyyat', asset: 'assets/icons/car.png'),
];

class CategoryModel {
  final String name;
  final String asset;

  CategoryModel({
    required this.name,
    required this.asset,

  });
}
List<SliderModel> slider =[
  SliderModel(asset: "assets/slider/slider1.jpg"),
  SliderModel(asset: "assets/slider/slider0.jpg"),
  SliderModel(asset: "assets/slider/slider2.jpg"),
  SliderModel(asset: "assets/slider/slider3.jpg"),
  SliderModel(asset: "assets/slider/slider4.jpg"),

];
class SliderModel {
  final String asset;

  SliderModel({
    required this.asset,
});
}
List<ProductModel> product =[
  ProductModel(title: 'Apple iPhone 13 Pro Sierra Blue 256GB/6GB', description: 'Xususiyyetler', price: 1500,asset: 'assets/product/1.jpg'),
  ProductModel(title: 'Ofis kreslosu',description: 'Xususiyyetler', price: 85, asset: 'assets/product/2.jpg'),
  ProductModel(title: 'Masa və oturacaqlar', description: 'Xususiyyetler', price: 650,asset: 'assets/product/3.jpg'),
  ProductModel(title: 'Velosiped', description: 'Xususiyyetler', price: 240 ,asset: 'assets/product/4.jpg'),
  ProductModel(title: 'Noutbuk HP', description: 'Xususiyyetler', price: 565, asset: 'assets/product/5.jpg'),

];

class ProductModel {
  final String title;
  final String description;
  final double price;
  final String asset;

  ProductModel({
    required this.asset,
    required this.title,
    required this.description,
    required this.price,
  });
}
