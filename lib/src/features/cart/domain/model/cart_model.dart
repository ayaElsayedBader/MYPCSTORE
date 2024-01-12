class CartModel {
  final String id;
  final String status;

  final String category;
  final String name;
  final num price;
  final String description;
  final String image;
  final List<dynamic> images;
  final String company;
  final num countInStock;
  final num sales;
  final num v;
  final num quantity;
  final num totalPrice;

  CartModel(
      {required this.id,
      required this.status,
      required this.category,
      required this.name,
      required this.price,
      required this.description,
      required this.image,
      required this.images,
      required this.company,
      required this.countInStock,
      required this.sales,
      required this.v,
      required this.quantity,
      required this.totalPrice});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
        id: json['_id'],
        status: json['status'],
        category: json['category'],
        name: json['name'],
        price: json['price'].toDouble(),
        description: json['description'],
        image: json['image'],
        images: json['images'] ?? "",
        company: json['company'],
        countInStock: json['countInStock'],
        sales: json['sales'],
        v: json['__v'],
        quantity: json['quantity'].toDouble(),
        totalPrice: json['totalPrice']);
  }
}
