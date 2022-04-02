import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:consulting_system/core/themes/app_colors.dart';
import 'package:consulting_system/data/models/message.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  const MessageCard({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
          decoration: BoxDecoration(
            color: message.isMe ? AppColors.lightElv0 : AppColors.primaryColor,
            borderRadius: BorderRadius.circular(2.w),
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: message.isMe ? AppColors.darkElv0 : AppColors.lightElv0,
              fontSize: 12.sp,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
