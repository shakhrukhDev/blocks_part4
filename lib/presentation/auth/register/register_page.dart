import 'package:block_part4/constants/app_color.dart';
import 'package:block_part4/constants/app_icon.dart';
import 'package:block_part4/constants/widgets/styles.dart';
import 'package:block_part4/presentation/auth/login/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                Text("Create an account!",
                    style:
                        AppStyle.fontWelcomeBackW700(appcolor: Colors.black)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: 'Username or Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefix: Icon(Icons.person)),
                        validator: _emailValidator,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          prefix: Icon(Icons.lock),
                          hintText: 'Confirm Password',
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
                      SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                      Text(
                        "By clicking the Register button, you agree to the public offer",
                        style: AppStyle.fontMontserrantW400(
                            appcolor: AppColors.C_575757),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                      )),
                  child: Text(
                    "Create Account",
                    style:
                        AppStyle.fontLBMontserrantW600(appcolor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Center(
                    child: Text(
                  "- OR Continue with -",
                  style: AppStyle.fontMontserrantW500(
                      appcolor: AppColors.C_575757),
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor: AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(
                        AppIcons.appleIcon,
                      ),
                      onPressed: () {},
                    ),
                    //   SizedBox(width: MediaQuery.of(context).size.width * 0.024),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor: AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(
                        AppIcons.appleIcon,
                      ),
                      onPressed: () {},
                    ),
                    //  SizedBox(width: MediaQuery.of(context).size.width * 0.024),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        side: BorderSide(color: AppColors.red, width: 1),
                        backgroundColor: AppColors.C_FCF3F6,
                      ),
                      child: SvgPicture.asset(
                        AppIcons.appleIcon,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "I Already Have an Account ",
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: AppStyle.fontsMontserrantW600(
                              appcolor: AppColors.red),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
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
