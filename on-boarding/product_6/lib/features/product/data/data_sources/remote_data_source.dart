import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/constants/constants.dart';
import '../../../../core/error/exception.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getAllProducts();
  Future<List<ProductModel>> getProductsByCategory(String category);

  Future<ProductModel> getProductById(String id);

  Future<bool> insertProduct(ProductModel product);

  Future<bool> updateProduct(ProductModel product);

  Future<bool> deleteProduct(int id);
}

class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final response = await client.get(
      Uri.parse(
        Urls.getProducts(),
      ),
    );

    if (response.statusCode == 200) {
      // TODO: fix the return of list of ProductModel
      return [
        ProductModel.fromJson(
          json.decode(response.body),
        )
      ];
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> getProductById(String id) async {
    final response = await client.get(
      Uri.parse(
        Urls.getProdcutById(id),
      ),
    );

    if (response.statusCode == 200) {
      return ProductModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<bool> deleteProduct(int id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProductsByCategory(String category) {
    // TODO: implement getProductsByCategory
    throw UnimplementedError();
  }

  @override
  Future<bool> insertProduct(ProductModel product) {
    // TODO: implement insertProduct
    throw UnimplementedError();
  }

  @override
  Future<bool> updateProduct(ProductModel product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
