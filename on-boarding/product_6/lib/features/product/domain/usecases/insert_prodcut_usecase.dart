import 'dart:math';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class InsertProductUsecase {
  final ProductRepository productRepository;

  InsertProductUsecase({required this.productRepository});

  Future<Either<Failure, bool>> call({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
  }) async {
    final product = ProductEntity(
        id: id,
        name: name,
        description: description,
        price: price,
        imageUrl: imageUrl);

    final res = await productRepository.insertProduct(product);
    return res;
  }
}
