import "product_item.dart";

class Product {
  String id;
  String name;
  String about;
  String category;
  String createdDate;
  String currency;
  String supplier;
  List<ProductItem> productItem;

  Product({
    required this.id,
    required this.name,
    required this.about,
    required this.category,
    required this.createdDate,
    required this.currency,
    required this.supplier,
    required this.productItem,
  });
  Product copyWith({
    String? id,
    String? name,
    String? about,
    String? category,
    String? createdDate,
    String? currency,
    String? supplier,
    List<ProductItem>? productItem,
  }) {
    return Product(
        id: id ?? this.id,
        name: name ?? this.name,
        about: about ?? this.about,
        category: category ?? this.category,
        createdDate: createdDate ?? this.category,
        currency: currency ?? this.currency,
        supplier: supplier ?? this.supplier,
        productItem: productItem ?? this.productItem);
  }
  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        about: json["about"],
        category: json["category"],
        createdDate: json["created_date"],
        currency: json["currency"],
        supplier: json["supplier"],
        productItem: List<ProductItem>.from(json["product_item"].map((x) => ProductItem.fromJson(x))),
    );
}
