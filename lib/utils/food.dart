class Food {
  String engName;
  String thaName;
  String foodValue;
  double price;

  Food({this.engName, this.thaName, this.foodValue, this.price});

  static List<Food> getFood() {
    return <Food>[
      Food(
        engName: 'Pizza',
        thaName: 'พิซซ่า',
        foodValue: 'pizza',
        price: 45.0,
      ),
      Food(
        engName: 'Shabu',
        thaName: 'ชาบู',
        foodValue: 'shabu',
        price: 199.0,
      ),
      Food(
        engName: 'Steak',
        thaName: 'สเต็ก',
        foodValue: 'steak',
        price: 149.0,
      ),
      Food(
        engName: 'Salad',
        thaName: 'สลัด',
        foodValue: 'salad',
        price: 40.0,
      ),
      Food(
        engName: 'Sanwich',
        thaName: 'แซนวิช',
        foodValue: 'sanwich',
        price: 20.0,
      ),
    ];
  }
}
