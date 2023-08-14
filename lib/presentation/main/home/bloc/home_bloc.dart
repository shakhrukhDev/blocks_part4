import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:block_part4/constants/app_image.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<ListItemsEvent>(_productItems);
    on<ProductsEvent>(_productAboutItems);
    on<IsLikeEvent>(_isLiked);
  }

  void _productItems(ListItemsEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(product: product));
  }

  void _productAboutItems(ProductsEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(productAbout: productAbout));
  }

  void _isLiked(IsLikeEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(isLike: event.isLike));
  }

  final List<ProductModel> product = [
    ProductModel(text: 'Beauty', image: AppImages.beautyImage),
    ProductModel(text: 'Fashion', image: AppImages.fashionImage),
    ProductModel(text: 'Kids', image: AppImages.kidsImage),
    ProductModel(text: 'Mens', image: AppImages.menImage),
    ProductModel(text: 'Womens', image: AppImages.womenImage),
  ];

  final List<ProductModelAbout> productAbout = [
    ProductModelAbout(
        text: 'Women Printed Kurta',
        image: AppImages.women2Image,
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        newCoast: "\$ ₹1500",
        oldCoast: '\$ ₹2499',
        offer: '40%Off',
        quantity: '514078'),
    ProductModelAbout(
        text: 'HRX by Hrithik Roshan',
        image: AppImages.barsovkaImage,
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        newCoast: '\$ ₹2499',
        oldCoast: '\$ ₹4999',
        offer: '50%Off',
        quantity: '56890'),

  ];
}

