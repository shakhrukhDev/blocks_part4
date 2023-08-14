import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/main/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductAboutItem extends StatelessWidget {
  ProductModelAbout productModelAbout;

  ProductAboutItem({Key? key, required this.productModelAbout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                productModelAbout.image,
              ),
              Text(
                productModelAbout.text,
                style: AppStyle.fontMontserrantW500(appcolor: Colors.black),
              ),
              Text(
                productModelAbout.description,
                style: AppStyle.montserrat10xW400Black,
              ),
              Text(
                productModelAbout.newCoast,
                style: AppStyle.fontMontserrantW500(appcolor: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    productModelAbout.oldCoast,
                    style: AppStyle.montserrat12xW300Gray,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    productModelAbout.offer,
                    style: AppStyle.montserrat10xW400Red,
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        bloc.add(IsLikeEvent(isLike: !state.isLike));
                      },
                      icon: Icon(
                        state.isLike ? Icons.star : Icons.star_border,
                        color: state.isLike ? Colors.deepOrangeAccent.withOpacity(0.7) : Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {
                        bloc.add(IsLikeEvent(isLike: !state.isLike));
                      },
                      icon: Icon(
                        state.isLike ? Icons.star : Icons.star_border,
                        color: state.isLike ? Colors.deepOrangeAccent.withOpacity(0.7) : Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {
                        bloc.add(IsLikeEvent(isLike: !state.isLike));
                      },
                      icon: Icon(
                        state.isLike ? Icons.star : Icons.star_border,
                        color: state.isLike ? Colors.deepOrangeAccent.withOpacity(0.7) : Colors.grey,
                      )),

                ],
              )
            ],
          ),
        );
      },
    );
  }
}
