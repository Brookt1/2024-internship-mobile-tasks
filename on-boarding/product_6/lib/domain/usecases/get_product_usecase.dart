import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductUsecase {
  final ProductRepository productRepository;
  final int id;

  GetProductUsecase({required this.productRepository, required this.id});

  Future<Either<Failure, Product>> call() async {
    return await productRepository.getProduct(id);
  }
}
