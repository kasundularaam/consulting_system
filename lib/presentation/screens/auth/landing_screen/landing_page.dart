import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/strings.dart';
import '../../../router/app_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const Duration duration = Duration(seconds: 2);
  void goToHome() =>
      Future.delayed(duration).then((value) => Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRouter.homePage, (route) => false));
  void goToLogin() =>
      Future.delayed(duration).then((value) => Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRouter.logInPage, (route) => false));
  @override
  Widget build(BuildContext context) {
    goToLogin();
    return Scaffold(
      body: Center(
        child: Image.asset(
          Strings.landingImg,
          height: 80.w,
          width: 80.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
