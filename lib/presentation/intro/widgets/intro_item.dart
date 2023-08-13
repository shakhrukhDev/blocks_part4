import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/intro/intro_bloc.dart';
import 'package:flutter/cupertino.dart';

class IntroItem extends StatelessWidget {
  final IntroModel introModel;

  const IntroItem({Key? key, required this.introModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(width: double.infinity),
            Image.asset(
              introModel.image,
              width: media.size.height * 300 / 812,
              height: media.size.height * 300 / 812,
            ),
            const SizedBox(height: 16),
            Text(
              introModel.title,
              textAlign: TextAlign.center,
              style: AppStyle.montserrat24xW800Black,
            ),
            const SizedBox(height: 10),
            Text(
              introModel.description,
              textAlign: TextAlign.center,
              style: AppStyle.montserrat14xW600Gray,
            ),
          ],
        ),
      ),
    );
  }
}
