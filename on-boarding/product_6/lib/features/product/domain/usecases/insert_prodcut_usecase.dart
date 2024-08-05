import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class InsertProductUsecase {
  final ProductRepository productRepository;
  final Product product;

  InsertProductUsecase(
      {required this.productRepository, required this.product});

  Future<Either<Failure, bool>> call() async {
    return await productRepository.insertProduct(product);
  }
}
