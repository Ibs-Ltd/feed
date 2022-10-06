import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class PremiumMembership extends StatelessWidget{
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
                  "assets/images/badge.png",
                  scale: 3,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "UPGRADE",
                      style: TextStyle(
                          color: AppColors.appWhite,
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.appBlack,
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: PoppinsTextView(
                            text: "PRO",
                            size: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appYellow,
                          ),
                        ))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  child:
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                              scale: 3,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Have More than 1 project available.",
                              size: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.appWhite,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                              scale: 3,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Plan more than 3 Posts.",
                              size: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.appWhite,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                              scale: 3,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Check your Post via Date.",
                              size: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.appWhite,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                              scale: 3,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppTextView(
                              text: "Plan Posts for IG and TikTok.",
                              size: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.appWhite,
                            )
                          ],
                        ),
                      ],
                    ),

                ),

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
                      text: "UNLOCK PREMIUM",
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