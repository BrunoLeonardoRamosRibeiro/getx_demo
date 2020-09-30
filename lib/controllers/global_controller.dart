import 'package:get/get.dart';
import 'package:getx_demo/models/product.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class GlobalController extends GetxController {

  List<Product> _products = [];
  List<Product> get products => _products;

  @override
  void onInit() {
    super.onInit();

    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final String productString = await rootBundle.loadString(
        'assets/products.json');

    this._products = (jsonDecode(productString) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print("onInit Global carregamos os produtos");

    update(['products']);
  }

}