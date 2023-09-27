class ProductData{
  final String img;
  bool isLiked;
  int discount;
  final String name;
  int price;
  String kg;
  int quantity;
  ProductData({required this.img,required this.name,required this.isLiked,required this.price,required this.discount,required this.kg,this.quantity = 0});
}