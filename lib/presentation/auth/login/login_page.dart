import 'package:block_part4/constants/app_color.dart';
import 'package:block_part4/constants/app_icon.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/auth/register/register_page.dart';
import 'package:block_part4/presentation/main/home/home_page.dart';
import 'package:block_part4/presentation/main/main/main_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!", style: AppStyle.fontWelcomeBackW700(appcolor: Colors.black),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration:
                        InputDecoration(
                            hintText: 'Username or Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            prefix: Icon(Icons.person)
                        ),
                        validator: _emailValidator,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefix: Icon(Icons.lock),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        validator: _passwordValidator,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {

                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(color: AppColors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                      )),
                  child:  Text("Login", style: AppStyle.fontLBMontserrantW600(appcolor: Colors.white),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                Center(child: Text("- OR Continue with -", style: AppStyle.fontMontserrantW500(appcolor: AppColors.C_575757),)),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor:  AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(AppIcons.appleIcon,),
                      onPressed: () {},
                    ),
                    //   SizedBox(width: MediaQuery.of(context).size.width * 0.024),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor:  AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(AppIcons.appleIcon,),
                      onPressed: () {},
                    ),
                    //  SizedBox(width: MediaQuery.of(context).size.width * 0.024),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor:  AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(AppIcons.appleIcon,),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Create An Account ",
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up',
                          style: AppStyle.fontsMontserrantW600(appcolor: AppColors.red),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}