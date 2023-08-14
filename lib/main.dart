import 'package:block_part4/data/sources/local_source.dart';
import 'package:block_part4/presentation/main/basket/bloc/basket_bloc.dart';
import 'package:block_part4/presentation/main/home/bloc/home_bloc.dart';
import 'package:block_part4/presentation/main/main/bloc/main_bloc.dart';
import 'package:block_part4/presentation/main/search/bloc/search_bloc.dart';
import 'package:block_part4/presentation/main/setting/bloc/setting_bloc.dart';
import 'package:block_part4/presentation/main/wishlist/bloc/wishlist_bloc.dart';
import 'package:block_part4/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalSource.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>MainBloc()),
        BlocProvider(create: (_)=> HomeBloc()..add(ListItemsEvent())..add(ProductsEvent())),
        BlocProvider(create: (_)=>WishlistBloc()),
        BlocProvider(create: (_)=>BasketBloc()),
        BlocProvider(create: (_)=>SearchBloc()),
        BlocProvider(create: (_)=>SettingBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashPage(),
      ),
    );
  }
}
