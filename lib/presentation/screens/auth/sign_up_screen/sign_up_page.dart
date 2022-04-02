import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../router/app_router.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_text_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPwController = TextEditingController();
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
                height: 5.h,
              ),
              Text(
                "SIGN UP",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Please fill the fields below here",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Full Name",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 12.sp,
                ),
              ),
              AuthTextInput(
                controller: nameController,
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 4.h,
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
                height: 4.h,
              ),
              Text(
                "Confirm Password",
                style: TextStyle(
                  color: AppColors.darkElv1,
                  fontSize: 12.sp,
                ),
              ),
              AuthTextInput(
                controller: confirmPwController,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                  child: AuthButton(
                text: "SIGN IN",
                onPress: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRouter.homePage, (route) => false),
              )),
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
                height: 2.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        color: AppColors.darkElv1,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " LOG IN",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                AppRouter.logInPage, (route) => false),
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
