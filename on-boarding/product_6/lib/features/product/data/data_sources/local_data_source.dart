import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exception.dart';
import '../models/product_model.dart';

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getCachedProducts();
  Future<bool> cacheProduct(ProductModel productToCache);
}

class ProductLocalDataSourceImpl extends ProductLocalDataSource {
  final SharedPreferences pref;

  ProductLocalDataSourceImpl({required this.pref});
  @override
  Future<bool> cacheProduct(ProductModel productToCache) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getCachedProducts() {
    final jsonList = pref.getStringList('cachedProduct');

    if (jsonList != null) {
      return Future.value(jsonList
          .map((jsonString) => ProductModel.fromJson(jsonDecode(jsonString)))
          .toList());
    }

    throw CacheException();
  }
}
