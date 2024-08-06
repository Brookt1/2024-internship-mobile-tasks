import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetProductUsecase {
  final ProductRepository productRepository;
  final String id;

  GetProductUsecase({required this.productRepository, required this.id});

  Future<Either<Failure, ProductEntity>> call() async {
    return await productRepository.getProductById(id);
  }
}
