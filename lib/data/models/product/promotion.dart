part of "product_item.dart";

class Promotion {
  String id;
  String name;
  double discount;
  String startDate;
  String endDate;
  Promotion({
    this.id = "0",
    this.name = "simple discount",
    required this.discount,
    required this.startDate,
    required this.endDate,
  });

  Promotion copyWith({
    String? id,
    String? name,
    double? discount,
    String? startDate,
    String? endDate,
  }) {
    return Promotion(
        id: id ?? this.id,
        name: name ?? this.name,
        discount: discount ?? this.discount,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  factory Promotion.fromJson(Map<String, dynamic> json) {
    return Promotion(
      discount: json['discount'].toDouble()?? 1.0,
      startDate: json['start_date'] ?? "${DateTime.now()}",
      endDate: json['end_date']??"${DateTime.now()}",
      id: json['id'] ?? "",
      name: json['name']??"",
    );
  }
}
