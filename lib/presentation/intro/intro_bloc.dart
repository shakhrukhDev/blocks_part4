import 'package:block_part4/constants/app_image.dart';
import 'package:block_part4/data/repositories/intro/intro_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroInitial()) {
    on<IntroNextPressed>((event, emit) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    });
    on<IntroPrevPressed>((event, emit) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    });
    on<IntroSkipPressed>((event, emit) async {
      /*emit(LoginIsLoadingState());
      final result = await _repository.loginRequest(argument);
      result.fold((left) {
        emit(LoginErrorState());
      }, (right) {
        emit(LoginToMainState());
      });*/

      await _repository.setIsShowIntro(true);
      emit(IntroToLoginState());
    });
    on<IntroPageScrolled>((event, emit) {
      emit(IntroPageChangedState(page: pageController.page?.toInt() ?? 0));
    });
    on<IntroGetStartPressed>((event, emit) async {
      await _repository.setIsShowIntro(true);
      emit(IntroToLoginState());
    });
  }

  final IntroRepository _repository = IntroRepositoryImpl.getInstance();

  final PageController pageController = PageController();

  final List<IntroModel> introList = [
    IntroModel(
      title: "Choose Products",
      description: "Amet minim mollit non deserunt ullamco est "
          "sit aliqua dolor do amet sint. Velit officia "
          "consequat duis enim velit mollit.",
      image: AppImages.introImage1,
    ),
    IntroModel(
      title: "Make Payment",
      description: "Amet minim mollit non deserunt ullamco est "
          "sit aliqua dolor do amet sint. Velit officia "
          "consequat duis enim velit mollit.",
      image: AppImages.introImage2,
    ),
    IntroModel(
      title: "Get Your Order",
      description: "Amet minim mollit non deserunt ullamco est "
          "sit aliqua dolor do amet sint. Velit officia "
          "consequat duis enim velit mollit.",
      image: AppImages.introImage3,
    ),
  ];
}

class IntroModel {
  final String image;
  final String title;
  final String description;

  IntroModel({required this.image, required this.title, required this.description});
}
