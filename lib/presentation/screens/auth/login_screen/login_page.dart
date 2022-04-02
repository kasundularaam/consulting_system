import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../router/app_router.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightElv0,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  Strings.landingImg,
                  width: 40.w,
                  height: 40.w,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Please Sign in to continue",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "email address",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 12.sp,
                ),
              ),
              AuthTextInput(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Password",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 12.sp,
                ),
              ),
              AuthTextInput(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: AuthButton(
                  text: "LOGIN",
                  onPress: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      AppRouter.homePage, (route) => false),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: AppColors.darkElv1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: AppColors.darkElv1,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " SIGN UP",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                AppRouter.signUpPage, (route) => false),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
