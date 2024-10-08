import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/cubit/user_cubit.dart';
import 'core/network/network_info.dart';
import 'core/util/input_converter.dart';
import 'features/auth/data/data_sources/auth_local_data_source.dart';
import 'features/auth/data/data_sources/auth_remote_data_source.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/check_signed_in_usecase.dart';
import 'features/auth/domain/usecases/get_user.dart';
import 'features/auth/domain/usecases/log_out_usecase.dart';
import 'features/auth/domain/usecases/sign_in_usecase.dart';
import 'features/auth/domain/usecases/sign_up_usecase.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/product/data/data_sources/local_data_source.dart';
import 'features/product/data/data_sources/remote_data_source.dart';
import 'features/product/data/repositories/product_repository_impl.dart';
import 'features/product/domain/repositories/product_repository.dart';
import 'features/product/domain/usecases/delete_prodcut_usecase.dart';
import 'features/product/domain/usecases/get_all_prodcuts_usecase.dart';
import 'features/product/domain/usecases/get_product_usecase.dart';
import 'features/product/domain/usecases/insert_prodcut_usecase.dart';
import 'features/product/domain/usecases/update_product_usecase.dart';
import 'features/product/presentation/bloc/product_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => UserCubit());

  // auth Features

  // bloc

  sl.registerFactory(
    () => AuthBloc(
      signInUsecase: sl(),
      signUpUsecase: sl(),
      logOutUsecase: sl(),
      checkSignedInUsecase: sl(),
      getUserUsecase: sl(),
    ),
  );

  // usecase
  sl.registerFactory(() => SignInUsecase(repository: sl()));
  sl.registerFactory(() => SignUpUsecase(repository: sl()));
  sl.registerFactory(() => LogOutUsecase(repository: sl()));
  sl.registerFactory(() => CheckSignedInUsecase(repository: sl()));
  sl.registerFactory(() => GetUserUsecase(repository: sl()));

  // repository

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImp(
      networkInfo: sl(),
      authRemoteDataSource: sl(),
      authLocalDataSource: sl(),
    ),
  );

  // data source
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      client: sl(),
      authLocalDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(
      prefs: sl(),
    ),
  );
  // Product Features

  // bloc
  sl.registerFactory(
    () => ProductBloc(
      getAllProductsUsecase: sl(),
      deleteProductUsecase: sl(),
      getProductUsecase: sl(),
      insertProductUsecase: sl(),
      updateProductUsecase: sl(),
      inputConverter: sl(),
    ),
  );

  // use case
  sl.registerFactory(() => GetAllProductsUsecase(productRepository: sl()));
  sl.registerFactory(() => DeleteProductUsecase(productRepository: sl()));
  sl.registerFactory(() => GetProductUsecase(productRepository: sl()));
  sl.registerFactory(() => InsertProductUsecase(productRepository: sl()));
  sl.registerFactory(() => UpdateProductUsecase(productRepository: sl()));

  // Repository

  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(
            client: sl(),
            productLocalDataSource: sl(),
          ));
  sl.registerLazySingleton<ProductLocalDataSource>(
    () => ProductLocalDataSourceImpl(prefs: sl()),
  );
  // Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectionChecker: sl()),
  );

  //  External
  final sharedpreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedpreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
