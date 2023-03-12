part "promotion.dart";

class ProductItem {
  String id;
  String sku;
  int quantity;
  double price;
  String? about;
  double tax;
  bool available;
  List<String> imageUrl;
  Promotion? promotion;
  Map<String, dynamic>? variation;

  ProductItem({
    required this.id,
    required this.sku,
    required this.quantity,
    required this.price,
    required this.about,
    required this.imageUrl,
    this.tax = 1.0,
    this.available = true,
    this.promotion,
    this.variation,
  });
  factory ProductItem.fromJson(Map<String, dynamic> json) {
    if (json['promotion'] != null) {
      Promotion myPromotion;
      myPromotion = Promotion.fromJson(json['promotion']);
      print(myPromotion.discount);
    }
    return ProductItem(
      id: json['id'] ?? "p${DateTime.now().millisecond}",
      sku: json['sku'] ?? "useRandomSku",
      quantity: json['quantity'] ?? 1,
      price: json['price'].toDouble() ?? 0,
      about: json['about'] ?? "no details for the current product",
      imageUrl: json['image_url'].cast<String>() ?? [],
      available: json['available'],
      tax: json['tax'].toDouble() ?? 1.2,
      // promotion: json['promotion'],
      variation: json['variation'],
    );
  }
  ProductItem copyWith({
    String? id,
    String? sku,
    int? quantity,
    double? price,
    String? about,
    double? tax,
    bool? available,
    List<String>? imageUrl,
    Promotion? promotion,
    Map<String, dynamic>? variation,
  }) {
    return ProductItem(
      id: id ?? this.id,
      sku: sku ?? this.sku,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      about: about ?? this.about,
      imageUrl: imageUrl ?? this.imageUrl,
      available: available ?? this.available,
      tax: tax ?? this.tax,
      promotion: promotion ?? this.promotion,
    );
  }
}
