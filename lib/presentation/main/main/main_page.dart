import 'package:block_part4/presentation/main/basket/basket_page.dart';
import 'package:block_part4/presentation/main/home/home_page.dart';
import 'package:block_part4/presentation/main/main/bloc/main_bloc.dart';
import 'package:block_part4/presentation/main/search/search_page.dart';
import 'package:block_part4/presentation/main/setting/setting_page.dart';
import 'package:block_part4/presentation/main/wishlist/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (_, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              WishListPage(),
              BasketPage(),
              SearchPage(),
              SettingPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context.read<MainBloc>().add(
                    BottomMenuEvent(
                      menu: BottomMenu.values[index],
                    ),
                  );
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border_sharp), label: 'WishList'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
            ],
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepPurple,
          ),
        );
      },
    );
  }
}
