import 'package:consulting_system/core/themes/app_colors.dart';
import 'package:consulting_system/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AppRouter.chatPage),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
            decoration: BoxDecoration(
              color: AppColors.lightElv0,
              borderRadius: BorderRadius.circular(1.w),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Linda Fisher",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Hey There!",
                      style: TextStyle(
                        color: AppColors.darkElv1,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        )
      ],
    );
  }
}
