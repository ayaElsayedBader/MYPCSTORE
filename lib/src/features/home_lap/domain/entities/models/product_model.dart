class LapItemsModel {
  final String id;
  final String status;
  final String category;
  final String name;
  final double price;
  final String description;
  final String image;
  final List<String> images;
  final String company;
  final int countInStock;
  final int sales;

  LapItemsModel({
    required this.id,
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
  });

  factory LapItemsModel.fromJson(Map<String, dynamic> json) {
    return LapItemsModel(
      id: json['_id'],
      status: json['status'],
      category: json['category'],
      name: json['name'],
      price: json['price'].toDouble(),
      description: json['description'],
      image: json['image'] ?? '',
      images: json['images'].cast<String>(),
      company: json['company'],
      countInStock: json['countInStock'],
      sales: json['sales'],
    );
  }
}
