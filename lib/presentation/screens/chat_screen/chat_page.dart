import 'dart:math';

import 'package:consulting_system/data/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/themes/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'widgets/message_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController messageController = TextEditingController();
  List<Message> messages = [];

  sendMessage() {
    final String messageTxt = messageController.text.trim();
    Random random = Random();
    bool isMe = random.nextBool();
    messages.insert(0, Message(message: messageTxt, isMe: isMe));
    setState(() {});
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.lightElv1,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                color: AppColors.primaryColor,
                child: Row(
                  children: [
                    Text(
                      "Linda Fisher",
                      style: TextStyle(
                        color: AppColors.lightElv0,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    ListView.builder(
                      itemCount: messages.length,
                      shrinkWrap: true,
                      reverse: true,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      itemBuilder: (context, index) => MessageCard(
                        message: messages[index],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(2.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.lightElv0,
                  borderRadius: BorderRadius.circular(2.w),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        minLines: 1,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.darkElv0,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.darkElv1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    GestureDetector(
                      onTap: () => sendMessage(),
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                        ),
                        child: Icon(
                          Icons.send_rounded,
                          color: AppColors.lightElv0,
                          size: 22.sp,
                        ),
                      ),
                    )
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
