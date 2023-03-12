import 'dart:convert';
import 'package:flutter/services.dart';
import '../data/models/models.dart';

class MockWarehouseApi {
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final dataString = await _loadAsset('assets/simple_data/product.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['products'] != null) {
      final product = <Product>[];
      json['products'].forEach((value) {
        product.add(Product.fromJson(value));
      });
      return product;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
