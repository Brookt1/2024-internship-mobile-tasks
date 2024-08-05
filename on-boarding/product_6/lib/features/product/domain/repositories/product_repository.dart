import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, List<Product>>> getProductsByCategory(String category);

  Future<Either<Failure, Product>> getProductById(String id);

  Future<Either<Failure, bool>> insertProduct(Product product);

  Future<Either<Failure, bool>> updateProduct(Product product);

  Future<Either<Failure, bool>> deleteProduct(int id);
}
