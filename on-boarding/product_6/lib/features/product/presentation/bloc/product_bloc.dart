import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/util/input_converter.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/delete_prodcut_usecase.dart';
import '../../domain/usecases/get_all_prodcuts_usecase.dart';
import '../../domain/usecases/get_product_usecase.dart';
import '../../domain/usecases/insert_prodcut_usecase.dart';
import '../../domain/usecases/update_product_usecase.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProductsUsecase _getAllProductsUsecase;
  final GetProductUsecase _getProductUsecase;
  final UpdateProductUsecase _updateProductUsecase;
  final InsertProductUsecase _insertProductUsecase;
  final DeleteProductUsecase _deleteProductUsecase;
  final InputConverter _inputConverter;

  ProductBloc(
      {required GetAllProductsUsecase getAllProductsUsecase,
      required GetProductUsecase getProductUsecase,
      required UpdateProductUsecase updateProductUsecase,
      required InsertProductUsecase insertProductUsecase,
      required DeleteProductUsecase deleteProductUsecase,
      required InputConverter inputConverter})
      : _getAllProductsUsecase = getAllProductsUsecase,
        _getProductUsecase = getProductUsecase,
        _updateProductUsecase = updateProductUsecase,
        _insertProductUsecase = insertProductUsecase,
        _deleteProductUsecase = deleteProductUsecase,
        _inputConverter = inputConverter,
        super(IntialState()) {
    on<LoadAllProductEvent>(
      _onLoadAllProducts,
      transformer: debounce(
        const Duration(
          milliseconds: 500,
        ),
      ),
    );
    on<GetSingleProductEvent>(_onLoadSingleProduct);
    on<UpdateProductEvent>(_onUpdateProduct);
    on<CreateProductEvent>(_onCreateProduct);
    on<DeleteProductEvent>(_onDeleteProduct);
  }

  Future<void> _onLoadAllProducts(
      LoadAllProductEvent event, Emitter<ProductState> emit) async {
    emit(LoadingState());
    final result = await _getAllProductsUsecase();
    result.fold(
      (failure) {
        emit(ErrorState(message: failure.message));
      },
      (data) {
        emit(LoadedAllProductsState(products: data));
      },
    );
  }

  Future<void> _onLoadSingleProduct(
      GetSingleProductEvent event, Emitter<ProductState> emit) async {
    emit(LoadingState());
    final result = await _getProductUsecase(event.id);
    result.fold(
      (failure) {
        emit(ErrorState(message: failure.message));
      },
      (data) {
        emit(LoadedSingleProductState(result: data));
      },
    );
  }

  Future<void> _onUpdateProduct(
      UpdateProductEvent event, Emitter<ProductState> emit) async {
    emit(LoadingState());

    final inputEither = _inputConverter.stringToUnsignedDouble(event.price);
    inputEither.fold((failure) {
      emit(ErrorState(message: failure.message));
    }, (data) async {
      final call = await _updateProductUsecase(
          id: event.id,
          description: event.description,
          imageUrl: event.imageUrl,
          name: event.name,
          price: data);

      call.fold(
        (failure) {
          emit(ErrorState(message: failure.message));
        },
        (data) {
          _onLoadAllProducts(LoadAllProductEvent(), emit);
        },
      );
    });
  }

  Future<void> _onCreateProduct(
      CreateProductEvent event, Emitter<ProductState> emit) async {
    emit(LoadingState());

    final inputEither = _inputConverter.stringToUnsignedDouble(event.price);
    inputEither.fold((failure) {
      emit(ErrorState(message: failure.message));
    }, (data) async {
      final call = await _insertProductUsecase(
          id: event.id,
          description: event.description,
          imageUrl: event.imageUrl,
          name: event.name,
          price: data);

      call.fold(
        (failure) {
          emit(ErrorState(message: failure.message));
        },
        (data) {
          _onLoadAllProducts(LoadAllProductEvent(), emit);
        },
      );
    });
  }

  Future<void> _onDeleteProduct(
      DeleteProductEvent event, Emitter<ProductState> emit) async {
    emit(LoadingState());
    final result = await _deleteProductUsecase(event.id);
    result.fold(
      (failure) {
        emit(ErrorState(message: failure.message));
      },
      (data) {
        _onLoadAllProducts(LoadAllProductEvent(), emit);
      },
    );
  }
}

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}
