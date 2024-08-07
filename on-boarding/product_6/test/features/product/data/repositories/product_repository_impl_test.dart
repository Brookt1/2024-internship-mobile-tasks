import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:product_6/core/error/exception.dart';
import 'package:product_6/core/error/failure.dart';
import 'package:product_6/features/product/data/models/product_model.dart';
import 'package:product_6/features/product/data/repositories/product_repository_impl.dart';
import 'package:product_6/features/product/domain/entities/product_entity.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockProductRemoteDataSource mockProductRemoteDataSource;
  late MockProductLocalDataSource mockProductLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;
  late ProductRepositoryImpl productRepositoryImpl;

  setUp(() {
    mockProductRemoteDataSource = MockProductRemoteDataSource();
    mockProductLocalDataSource = MockProductLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    productRepositoryImpl = ProductRepositoryImpl(
      remoteDataSource: mockProductRemoteDataSource,
      localDataSource: mockProductLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  const testProductModel = ProductModel(
    id: '1',
    name: 'shoe',
    description: 'best shoes',
    price: 12.0,
    imageUrl: 'http',
  );
  const testProductEntity = ProductEntity(
    id: '1',
    name: 'shoe',
    description: 'best shoes',
    price: 12.0,
    imageUrl: 'http',
  );

  const testId = '1';
  group('get product by id', () {
    test('should return product when a call to data source is successful',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testId))
          .thenAnswer((_) async => testProductModel);
      // act
      final result = await productRepositoryImpl.getProductById(testId);

      // assert
      expect(
        result,
        equals(
          const Right(
            testProductEntity,
          ),
        ),
      );
    });

    test(
        'should return server failure when a call to data source is unsuccessful',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testId))
          .thenThrow(ServerException());
      // act
      final result = await productRepositoryImpl.getProductById(testId);

      // assert
      expect(
        result,
        equals(
          const Left(
            ServerFailure('An error has occurred'),
          ),
        ),
      );
    });

    test('should return connection failure when the device has no internet',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testId))
          .thenThrow(const SocketException('Failed to connect to the network'));
      // act
      final result = await productRepositoryImpl.getProductById(testId);

      // assert
      expect(
        result,
        equals(
          const Left(
            ConnectionFailure('Failed to connect to the network'),
          ),
        ),
      );
    });
  });

  group('get all products', () {
    test(
        'should return a list of product when a call to data source is successful',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getAllProducts())
          .thenAnswer((_) async => [testProductModel]);
      // act
      final call = await productRepositoryImpl.getAllProducts();
      final result = call.getOrElse(() => []);
      // assert

      expect(
        Right(ilist(result)),
        equals(
          Right(ilist([testProductEntity])),
        ),
      );
    });

    test(
        'should return server failure when a call to data source is unsuccessful',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getAllProducts())
          .thenThrow(ServerException());
      // act
      final result = await productRepositoryImpl.getAllProducts();

      // assert
      expect(
        result,
        equals(
          const Left(
            ServerFailure('An error has occurred'),
          ),
        ),
      );
    });

    test('should return connection failure when the device has no internet',
        () async {
      // arrange
      when(mockProductRemoteDataSource.getAllProducts())
          .thenThrow(const SocketException('Failed to connect to the network'));
      // act
      final result = await productRepositoryImpl.getAllProducts();

      // assert
      expect(
        result,
        equals(
          const Left(
            ConnectionFailure('Failed to connect to the network'),
          ),
        ),
      );
    });
  });
}
