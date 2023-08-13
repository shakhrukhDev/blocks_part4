import 'package:block_part4/constants/app_color.dart';
import 'package:block_part4/constants/app_image.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/auth/login/login_page.dart';
import 'package:block_part4/presentation/main/home/home_page.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(AppImages.unSplashImage),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "You want Authentic, here you go!",
                style: AppStyle.fontGetStMontserrantW600(
                  appcolor: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              Text(
                "Find it here, buy it now!",
                style: AppStyle.fontStMontserrantW400(
                    appcolor: AppColors.gray),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                      )),
                  child: Text(
                    "Get Started",
                    style: AppStyle.fontGetStBMontserrantW600(
                        appcolor: Colors.white,),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
