import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        imageUrl,
      ];
}
