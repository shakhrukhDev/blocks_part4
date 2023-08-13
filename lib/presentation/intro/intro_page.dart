import 'package:block_part4/presentation/auth/login/login_page.dart';
import 'package:block_part4/presentation/intro/widgets/intro_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:block_part4/presentation/intro/intro_bloc.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/constants/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = IntroBloc();
        bloc.pageController.addListener(() => bloc.add(IntroPageScrolled()));
        return bloc;
      },
      child: BlocListener<IntroBloc, IntroState>(
        listener: (context, state) {
          if (state is IntroToLoginState) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
          {
            /// show message
          }
        },
        child: Builder(builder: (context) {
          final bloc = context.read<IntroBloc>();
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              elevation: 0,
              leadingWidth: 60,
              backgroundColor: AppColors.white,
              leading: Padding(
                padding: const EdgeInsets.all(16),
                child: BlocBuilder<IntroBloc, IntroState>(
                  buildWhen: (prev, cur) => cur is IntroPageChangedState,
                  builder: (context, state) {
                    var page = bloc.pageController.page?.toInt() ?? 0;
                    if (state is IntroPageChangedState) {
                      page = state.page;
                    }
                    return RichText(
                      text: TextSpan(
                        text: "${page + 1}",
                        style: AppStyle.montserrat18xW600Black,
                        children: [
                          TextSpan(
                            text: "/${bloc.introList.length}",
                            style: AppStyle.montserrat18xW600Gray,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => bloc.add(IntroSkipPressed()),
                  child: Text(
                    "Skip",
                    style: AppStyle.montserrat18xW600Black,
                  ),
                ),
              ],
            ),
            body: PageView.builder(
              controller: bloc.pageController,
              itemCount: bloc.introList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return IntroItem(introModel: bloc.introList[index]);
              },
            ),
            bottomNavigationBar: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<IntroBloc, IntroState>(
                  buildWhen: (prev, cur) => cur is IntroPageChangedState,
                  builder: (context, state) {
                    var page = bloc.pageController.page?.toInt() ?? 0;
                    if (state is IntroPageChangedState) {
                      page = state.page;
                    }
                    final hasPrevButton = page > 0;
                    return TextButton(
                      onPressed: hasPrevButton ? () => bloc.add(IntroPrevPressed()) : null,
                      child: Text(
                        hasPrevButton ? "Prev" : "    ",
                        style: AppStyle.montserrat18xW600Gray,
                      ),
                    );
                  },
                ),
                SmoothPageIndicator(
                  count: bloc.introList.length,
                  controller: bloc.pageController,
                  effect: const ExpandingDotsEffect(
                    dotWidth: 10,
                    spacing: 3,
                    dotHeight: 10,
                    radius: 10,
                    expansionFactor: 4,
                    dotColor: AppColors.gray,
                    activeDotColor: AppColors.black,
                  ),
                ),
                BlocBuilder<IntroBloc, IntroState>(
                    buildWhen: (prev, cur) => cur is IntroPageChangedState,
                    builder: (context, state) {
                      var page = bloc.pageController.page?.toInt() ?? 0;
                      if (state is IntroPageChangedState) {
                        page = state.page;
                      }
                      final hasGetStartButton = page == bloc.introList.length - 1;
                      return TextButton(
                        onPressed: () => bloc.add(
                          hasGetStartButton ? IntroGetStartPressed() : IntroNextPressed(),
                        ),
                        child: Text(
                          hasGetStartButton ? "Get Start" : "Next",
                          style: AppStyle.montserrat18xW600Red,
                        ),
                      );
                    }),
              ],
            ),
          );
        }),
      ),
    );
  }
}
