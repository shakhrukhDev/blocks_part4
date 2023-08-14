import 'package:block_part4/constants/app_color.dart';
import 'package:block_part4/constants/app_icon.dart';
import 'package:block_part4/constants/app_image.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/constants/widgets/textfield_items.dart';
import 'package:block_part4/presentation/main/home/bloc/home_bloc.dart';
import 'package:block_part4/presentation/main/home/widgets/product_about_item.dart';
import 'package:block_part4/presentation/main/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: const Color(0xffF9F9F9),
            appBar: AppBar(
              backgroundColor: const Color(0xffF9F9F9),
              toolbarHeight: 160,
              leading: const Padding(
                padding: EdgeInsets.only(left: 16),
                child: CircleAvatar(
                  backgroundColor: AppColors.C_F2F2F2,
                  child: Icon(
                    Icons.sort,
                  ),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.stylishIcon),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Stylish',
                    style: AppStyle.libreCaslonText18xW700Blue,
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(5.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: TextField(
                      decoration: TextFieldItems.items(
                        prefIcon: Icons.search_rounded,
                        suffIcon: Icons.keyboard_voice_outlined,
                        hintex: 'Search any Product..',
                        radius: 6,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                    child: Image.asset(
                      AppImages.userImage,
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: media.size.height * 0.016,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        "All Featured",
                        style: AppStyle.montserrat18xW600Black,
                      ),
                    ),
                    SizedBox(
                      height: media.size.height * 0.016,
                    ),
                    Container(
                      width: double.infinity,
                      height: 95,
                      color: AppColors.white,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, index) => ProductItem(productModel: state.product[index]),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 16,
                        ),
                        itemCount: state.product.length,
                      ),
                    ),
                    SizedBox(
                      height: media.size.height * 0.016,
                    ),
                    Stack(children: [
                      Container(
                          height: 189,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            AppImages.shoppingImage,
                          )),
                      Positioned(
                        top: 40,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40-50% OFF",
                              style: AppStyle.montserrat20xW700White,
                            ),
                            Text(
                              "Now in (product)",
                              style: AppStyle.fontMontserrantW400(appcolor: Colors.white),
                            ),
                            Text(
                              "All colours",
                              style: AppStyle.fontMontserrantW400(appcolor: Colors.white),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 32),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: const BorderSide(color: Colors.white),
                                  )),
                              onPressed: () {},
                              child: const Center(
                                child: Text('Shop Now ->'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 48,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deal of the Day",
                                style: AppStyle.montserrat16xW500White,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.hourIcon),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "22h 55m 20s remaining ",
                                    style: AppStyle.fontMontserrantW400(appcolor: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(90, 28),
                                  backgroundColor: AppColors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: const BorderSide(color: Colors.white),
                                  )),
                              onPressed: () {},
                              child: Center(
                                  child: Text(
                                'View All ->',
                                style: AppStyle.fontMontserrantW400(appcolor: Colors.white),
                              ))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 290,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (_, index) => ProductAboutItem(productModelAbout: state.productAbout[index]),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 0,
                              ),
                          itemCount: state.productAbout.length,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 12),
                        child: Row(
                          children: [
                            Image.asset(AppImages.image1),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Special Offers", style: AppStyle.montserrat16xW500Black,),
                                    SvgPicture.asset(AppIcons.stikerIcon)
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Text("We make sure you get the \noffer you need at best prices",
                                  style: AppStyle.montserrat12xW300Black,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: media.size.height*0.02,),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 64,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Trending Products ", style: AppStyle.montserrat16xW500White,),

                              Text("Last Date 29/02/22", style: AppStyle.montserrat12xW400White,)
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 32),
                                  backgroundColor: AppColors.pink,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: const BorderSide(color: Colors.white),
                                  )
                              ),
                              onPressed: (){}, child: const Center(child: Text(
                            'View All ->',style: TextStyle(color: Colors.white),))),
                        ],
                      ),
                    ),
                    SizedBox(height: media.size.height*0.02,),
                    SizedBox(
                      height: 290,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, index) => ProductAboutItem(productModelAbout: state.productAbout[index]),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 0,
                        ),
                        itemCount: state.productAbout.length,
                      ),
                    ),
                    SizedBox(height: media.size.height*0.02,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(AppImages.image2),
                           Text("New Arrivals ", style: AppStyle.montserrat20xW500Black,),
                            Row(
                              children: [
                                Text("Summer’ 25 Collections", style: AppStyle.montserrat12xW400Black),
                                const Spacer(),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(80, 32),
                                    backgroundColor:AppColors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),

                                    ),
                                  ),
                                  onPressed: (){}, child: const Center(
                                  child: Text('View All ->',style: TextStyle(color: Colors.white),),),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 358,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sponserd", style: AppStyle.montserrat20xW500Black,),
                              Image.asset(AppImages.image3),
                              Text("up to 50% Off", style: AppStyle.montserrat16xW700Black,)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}
