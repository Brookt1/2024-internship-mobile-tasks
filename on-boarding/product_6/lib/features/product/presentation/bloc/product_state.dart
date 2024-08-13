part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class IntialState extends ProductState {}

class LoadingState extends ProductState {}

class LoadedAllProductsState extends ProductState {
  final List<ProductEntity> products;

  const LoadedAllProductsState({required this.products});

  @override
  List<Object> get props => products;
}

class LoadedSingleProductState extends ProductState {
  final ProductEntity result;

  const LoadedSingleProductState({required this.result});
  @override
  List<Object> get props => [result];
}

class ErrorState extends ProductState {
  final String message;

  const ErrorState({required this.message});
  @override
  List<Object> get props => [message];
}
