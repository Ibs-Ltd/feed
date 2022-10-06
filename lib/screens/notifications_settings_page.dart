import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/yellow_noti.png",
                  scale: 3,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Get notified on",
                  style: TextStyle(
                      color: AppColors.appWhite,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "new changes",
                  style: TextStyle(
                      color: AppColors.appWhite,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal),
                ),
                RichText(
                  text: TextSpan(
                    text: 'in ',
                    style: TextStyle(
                        color: AppColors.appWhite,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Preview',
                        style: TextStyle(
                            color: AppColors.appWhite,
                            fontSize: 25,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                PoppinsTextView(
                  text:
                      "Get notified when you schedule",
                  size: 12,
                  color: AppColors.appLightGrey,
                ),
                PoppinsTextView(
                  text: "any post to upload to Instagram.",
                  size: 12,
                  color: AppColors.appLightGrey,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            child: InkWell(
              onTap: () {
                //continue tap will go here
              },
              child: Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 3,
                            offset: const Offset(0, 4)),
                      ]),
                  child: Center(
                    child: AppTextView(
                      text: "ADD NOTIFICATIONS",
                      size: 15,
                      color: AppColors.appBlack,
                    ),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
