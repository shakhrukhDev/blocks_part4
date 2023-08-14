part of 'home_bloc.dart';

class HomeState extends Equatable {

  final List<ProductModel> product;
  final List<ProductModelAbout> productAbout;

  final bool isLike;


  const HomeState({
    this.isLike = false,
    this.product = const [],
    this.productAbout = const [],
  });

  HomeState copyWith(
      {List<ProductModel>? product,
        List<ProductModelAbout>? productAbout,
        bool? isLike}) =>
      HomeState(
          product: product ?? this.product,
          productAbout: productAbout ?? this.productAbout,
          isLike: isLike ?? this.isLike);
  @override
  List<Object?> get props => [product, productAbout, isLike];
}

class ProductModel {
  String text;
  String image;

  ProductModel({required this.text, required this.image});
}

class ProductModelAbout {
  final String image;
  final String text;
  final String description;
  final String newCoast;
  final String oldCoast;
  final String offer;
  final String quantity;

  ProductModelAbout(
      {required this.text,
      required this.image,
      required this.description,
      required this.newCoast,
      required this.oldCoast,
      required this.offer,
      required this.quantity});
}
