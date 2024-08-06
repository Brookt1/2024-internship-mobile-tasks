import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class DeleteProdcutUsecase {
  final ProductRepository productRepository;
  final int id;

  DeleteProdcutUsecase({required this.productRepository, required this.id});

  Future<Either<Failure, bool>> call() async {
    return await productRepository.deleteProduct(id);
  }
}
