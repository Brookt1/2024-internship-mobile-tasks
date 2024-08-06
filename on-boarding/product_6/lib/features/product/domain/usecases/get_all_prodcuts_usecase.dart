import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetAllProdcutsUsecase {
  final ProductRepository productRepository;

  GetAllProdcutsUsecase({required this.productRepository});

  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await productRepository.getAllProducts();
  }
}
