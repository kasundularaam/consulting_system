import 'package:consulting_system/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                color: AppColors.primaryColor,
                child: Row(
                  children: [
                    Text(
                      Strings.appTitle,
                      style: TextStyle(
                          color: AppColors.lightColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
