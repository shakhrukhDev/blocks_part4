import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/main/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductItem extends StatelessWidget {

  ProductModel productModel;

  ProductItem({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                 productModel.image
              ),
              Text(productModel.text, style: AppStyle.montserrat10xW400Black,),
            ],
          ),
        );
      },
    );
  }
}
