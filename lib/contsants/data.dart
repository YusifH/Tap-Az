
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

