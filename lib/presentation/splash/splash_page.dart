import 'dart:async';
import 'package:block_part4/constants/app_color.dart';
import 'package:block_part4/constants/app_image.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/data/sources/local_source.dart';
import 'package:block_part4/presentation/auth/login/login_page.dart';
import 'package:block_part4/presentation/intro/intro_page.dart';
import 'package:block_part4/presentation/main/main_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    final localSource = LocalSource.getInstance();
    Timer(const Duration(seconds: 1), () {
      if (localSource.hasProfile) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      } else {
        if (!localSource.isShownIntro) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const IntroPage()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 125, height: 100, child: Image.asset(AppImages.splashLogo)),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Stylish",
              style: AppStyle.fontLibreCaslonTextW700(appcolor: AppColors.red),
            )
          ],
        ),
      ),
    );
  }
}
