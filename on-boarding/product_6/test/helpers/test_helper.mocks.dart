// Mocks generated by Mockito 5.4.4 from annotations
// in product_6/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:convert' as _i29;
import 'dart:typed_data' as _i30;

import 'package:dartz/dartz.dart' as _i2;
import 'package:flutter_bloc/flutter_bloc.dart' as _i28;
import 'package:http/http.dart' as _i8;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i14;
import 'package:product_6/core/error/failure.dart' as _i10;
import 'package:product_6/core/network/network_info.dart' as _i22;
import 'package:product_6/core/util/input_converter.dart' as _i21;
import 'package:product_6/features/auth/data/data_sources/auth_local_data_source.dart'
    as _i26;
import 'package:product_6/features/auth/data/data_sources/auth_remote_data_source.dart'
    as _i23;
import 'package:product_6/features/auth/data/models/sign_in_model.dart' as _i24;
import 'package:product_6/features/auth/data/models/sign_up_model.dart' as _i25;
import 'package:product_6/features/auth/data/models/signed_in_model.dart'
    as _i6;
import 'package:product_6/features/auth/data/models/user_model.dart' as _i7;
import 'package:product_6/features/product/data/data_sources/local_data_source.dart'
    as _i13;
import 'package:product_6/features/product/data/data_sources/remote_data_source.dart'
    as _i12;
import 'package:product_6/features/product/data/models/product_model.dart'
    as _i3;
import 'package:product_6/features/product/domain/entities/product_entity.dart'
    as _i11;
import 'package:product_6/features/product/domain/repositories/product_repository.dart'
    as _i5;
import 'package:product_6/features/product/domain/usecases/delete_prodcut_usecase.dart'
    as _i17;
import 'package:product_6/features/product/domain/usecases/get_all_prodcuts_usecase.dart'
    as _i16;
import 'package:product_6/features/product/domain/usecases/get_product_usecase.dart'
    as _i19;
import 'package:product_6/features/product/domain/usecases/insert_prodcut_usecase.dart'
    as _i18;
import 'package:product_6/features/product/domain/usecases/update_product_usecase.dart'
    as _i20;
import 'package:product_6/features/product/presentation/bloc/product_bloc.dart'
    as _i27;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductModel_1 extends _i1.SmartFake implements _i3.ProductModel {
  _FakeProductModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_2 extends _i1.SmartFake implements Duration {
  _FakeDuration_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddressCheckResult_3 extends _i1.SmartFake
    implements _i4.AddressCheckResult {
  _FakeAddressCheckResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductRepository_4 extends _i1.SmartFake
    implements _i5.ProductRepository {
  _FakeProductRepository_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSignedInModel_5 extends _i1.SmartFake implements _i6.SignedInModel {
  _FakeSignedInModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserModel_6 extends _i1.SmartFake implements _i7.UserModel {
  _FakeUserModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_7 extends _i1.SmartFake implements _i8.Response {
  _FakeResponse_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_8 extends _i1.SmartFake
    implements _i8.StreamedResponse {
  _FakeStreamedResponse_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRepository extends _i1.Mock implements _i5.ProductRepository {
  MockProductRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>
      getAllProducts() => (super.noSuchMethod(
            Invocation.method(
              #getAllProducts,
              [],
            ),
            returnValue: _i9.Future<
                    _i2.Either<_i10.Failure, List<_i11.ProductEntity>>>.value(
                _FakeEither_0<_i10.Failure, List<_i11.ProductEntity>>(
              this,
              Invocation.method(
                #getAllProducts,
                [],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>
      getProductsByCategory(String? category) => (super.noSuchMethod(
            Invocation.method(
              #getProductsByCategory,
              [category],
            ),
            returnValue: _i9.Future<
                    _i2.Either<_i10.Failure, List<_i11.ProductEntity>>>.value(
                _FakeEither_0<_i10.Failure, List<_i11.ProductEntity>>(
              this,
              Invocation.method(
                #getProductsByCategory,
                [category],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>> getProductById(
          String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProductById,
          [id],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>>.value(
                _FakeEither_0<_i10.Failure, _i11.ProductEntity>(
          this,
          Invocation.method(
            #getProductById,
            [id],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> insertProduct(
          _i11.ProductEntity? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertProduct,
          [product],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #insertProduct,
            [product],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> updateProduct(
          _i11.ProductEntity? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [product],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #updateProduct,
            [product],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> deleteProduct(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [id],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #deleteProduct,
            [id],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);
}

/// A class which mocks [ProductRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRemoteDataSource extends _i1.Mock
    implements _i12.ProductRemoteDataSource {
  MockProductRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<List<_i3.ProductModel>> getAllProducts() => (super.noSuchMethod(
        Invocation.method(
          #getAllProducts,
          [],
        ),
        returnValue:
            _i9.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i9.Future<List<_i3.ProductModel>>);

  @override
  _i9.Future<List<_i3.ProductModel>> getProductsByCategory(String? category) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProductsByCategory,
          [category],
        ),
        returnValue:
            _i9.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i9.Future<List<_i3.ProductModel>>);

  @override
  _i9.Future<_i3.ProductModel> getProductById(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProductById,
          [id],
        ),
        returnValue: _i9.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #getProductById,
            [id],
          ),
        )),
      ) as _i9.Future<_i3.ProductModel>);

  @override
  _i9.Future<bool> insertProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertProduct,
          [product],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> updateProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [product],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> deleteProduct(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [id],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
}

/// A class which mocks [ProductLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductLocalDataSource extends _i1.Mock
    implements _i13.ProductLocalDataSource {
  MockProductLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<List<_i3.ProductModel>> getCachedProducts() => (super.noSuchMethod(
        Invocation.method(
          #getCachedProducts,
          [],
        ),
        returnValue:
            _i9.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i9.Future<List<_i3.ProductModel>>);

  @override
  _i9.Future<bool> cacheProducts(List<_i3.ProductModel>? productsToCache) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheProducts,
          [productsToCache],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<String> getToken() => (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [],
        ),
        returnValue: _i9.Future<String>.value(_i14.dummyValue<String>(
          this,
          Invocation.method(
            #getToken,
            [],
          ),
        )),
      ) as _i9.Future<String>);
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i4.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);

  @override
  Duration get checkTimeout => (super.noSuchMethod(
        Invocation.getter(#checkTimeout),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#checkTimeout),
        ),
      ) as Duration);

  @override
  List<_i4.AddressCheckOptions> get addresses => (super.noSuchMethod(
        Invocation.getter(#addresses),
        returnValue: <_i4.AddressCheckOptions>[],
      ) as List<_i4.AddressCheckOptions>);

  @override
  set addresses(List<_i4.AddressCheckOptions>? value) => super.noSuchMethod(
        Invocation.setter(
          #addresses,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<bool> get hasConnection => (super.noSuchMethod(
        Invocation.getter(#hasConnection),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<_i4.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(
        Invocation.getter(#connectionStatus),
        returnValue: _i9.Future<_i4.InternetConnectionStatus>.value(
            _i4.InternetConnectionStatus.connected),
      ) as _i9.Future<_i4.InternetConnectionStatus>);

  @override
  _i9.Stream<_i4.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i9.Stream<_i4.InternetConnectionStatus>.empty(),
      ) as _i9.Stream<_i4.InternetConnectionStatus>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isActivelyChecking => (super.noSuchMethod(
        Invocation.getter(#isActivelyChecking),
        returnValue: false,
      ) as bool);

  @override
  _i9.Future<_i4.AddressCheckResult> isHostReachable(
          _i4.AddressCheckOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #isHostReachable,
          [options],
        ),
        returnValue:
            _i9.Future<_i4.AddressCheckResult>.value(_FakeAddressCheckResult_3(
          this,
          Invocation.method(
            #isHostReachable,
            [options],
          ),
        )),
      ) as _i9.Future<_i4.AddressCheckResult>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i15.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);

  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);

  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);

  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);

  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);

  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);

  @override
  _i9.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
}

/// A class which mocks [GetAllProductsUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllProductsUsecase extends _i1.Mock
    implements _i16.GetAllProductsUsecase {
  MockGetAllProductsUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepository get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepository_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>> call() =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue: _i9
            .Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>.value(
            _FakeEither_0<_i10.Failure, List<_i11.ProductEntity>>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.ProductEntity>>>);
}

/// A class which mocks [DeleteProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteProductUsecase extends _i1.Mock
    implements _i17.DeleteProductUsecase {
  MockDeleteProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepository get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepository_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> call(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [id],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [id],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);
}

/// A class which mocks [InsertProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockInsertProductUsecase extends _i1.Mock
    implements _i18.InsertProductUsecase {
  MockInsertProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepository get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepository_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> call({
    required String? id,
    required String? name,
    required String? description,
    required double? price,
    required String? imageUrl,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {
            #id: id,
            #name: name,
            #description: description,
            #price: price,
            #imageUrl: imageUrl,
          },
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [],
            {
              #id: id,
              #name: name,
              #description: description,
              #price: price,
              #imageUrl: imageUrl,
            },
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);
}

/// A class which mocks [GetProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetProductUsecase extends _i1.Mock implements _i19.GetProductUsecase {
  MockGetProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepository get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepository_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>> call(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [id],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>>.value(
                _FakeEither_0<_i10.Failure, _i11.ProductEntity>(
          this,
          Invocation.method(
            #call,
            [id],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i11.ProductEntity>>);
}

/// A class which mocks [UpdateProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateProductUsecase extends _i1.Mock
    implements _i20.UpdateProductUsecase {
  MockUpdateProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepository get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepository_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, bool>> call({
    required String? id,
    required String? name,
    required String? description,
    required double? price,
    required String? imageUrl,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {
            #id: id,
            #name: name,
            #description: description,
            #price: price,
            #imageUrl: imageUrl,
          },
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, bool>>.value(
            _FakeEither_0<_i10.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [],
            {
              #id: id,
              #name: name,
              #description: description,
              #price: price,
              #imageUrl: imageUrl,
            },
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, bool>>);
}

/// A class which mocks [InputConverter].
///
/// See the documentation for Mockito's code generation for more information.
class MockInputConverter extends _i1.Mock implements _i21.InputConverter {
  MockInputConverter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Either<_i10.Failure, double> stringToUnsignedDouble(String? str) =>
      (super.noSuchMethod(
        Invocation.method(
          #stringToUnsignedDouble,
          [str],
        ),
        returnValue: _FakeEither_0<_i10.Failure, double>(
          this,
          Invocation.method(
            #stringToUnsignedDouble,
            [str],
          ),
        ),
      ) as _i2.Either<_i10.Failure, double>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i22.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
}

/// A class which mocks [AuthRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDataSource extends _i1.Mock
    implements _i23.AuthRemoteDataSource {
  MockAuthRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i6.SignedInModel> signIn(_i24.SignInModel? signIn) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [signIn],
        ),
        returnValue: _i9.Future<_i6.SignedInModel>.value(_FakeSignedInModel_5(
          this,
          Invocation.method(
            #signIn,
            [signIn],
          ),
        )),
      ) as _i9.Future<_i6.SignedInModel>);

  @override
  _i9.Future<bool> signUp(_i25.SignUpModel? signUp) => (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [signUp],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<_i7.UserModel> getUser() => (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [],
        ),
        returnValue: _i9.Future<_i7.UserModel>.value(_FakeUserModel_6(
          this,
          Invocation.method(
            #getUser,
            [],
          ),
        )),
      ) as _i9.Future<_i7.UserModel>);
}

/// A class which mocks [AuthLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthLocalDataSource extends _i1.Mock
    implements _i26.AuthLocalDataSource {
  MockAuthLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<bool> logOut() => (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> checkSignedIn() => (super.noSuchMethod(
        Invocation.method(
          #checkSignedIn,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> cacheToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #cacheToken,
          [token],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<String> getToken() => (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [],
        ),
        returnValue: _i9.Future<String>.value(_i14.dummyValue<String>(
          this,
          Invocation.method(
            #getToken,
            [],
          ),
        )),
      ) as _i9.Future<String>);
}

/// A class which mocks [ProductBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductBloc extends _i1.Mock implements _i27.ProductBloc {
  MockProductBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i27.ProductState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i14.dummyValue<_i27.ProductState>(
          this,
          Invocation.getter(#state),
        ),
      ) as _i27.ProductState);

  @override
  _i9.Stream<_i27.ProductState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i9.Stream<_i27.ProductState>.empty(),
      ) as _i9.Stream<_i27.ProductState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i27.ProductEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i27.ProductEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i27.ProductState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i27.ProductEvent>(
    _i28.EventHandler<E, _i27.ProductState>? handler, {
    _i28.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i28.Transition<_i27.ProductEvent, _i27.ProductState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  void onChange(_i28.Change<_i27.ProductState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i8.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i8.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<_i8.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<_i8.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i29.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<_i8.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i29.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<_i8.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i29.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<_i8.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i29.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i9.Future<_i8.Response>.value(_FakeResponse_7(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response>);

  @override
  _i9.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i9.Future<String>.value(_i14.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i9.Future<String>);

  @override
  _i9.Future<_i30.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i9.Future<_i30.Uint8List>.value(_i30.Uint8List(0)),
      ) as _i9.Future<_i30.Uint8List>);

  @override
  _i9.Future<_i8.StreamedResponse> send(_i8.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i9.Future<_i8.StreamedResponse>.value(_FakeStreamedResponse_8(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i9.Future<_i8.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
