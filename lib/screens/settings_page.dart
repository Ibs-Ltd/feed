import 'package:feed/screens/home_page.dart';
import 'package:feed/screens/notifications_settings_page.dart';
import 'package:feed/screens/premium_membership_page.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const PoppinsTextView(
          text: "Settings",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: AppTextView(
                      text: "In-app",
                      size: 15,
                      color: AppColors.appDarkGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  NotificationSettings(),
                        ),
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 3),
                        padding: const EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: AppColors.appDarkGrey, width: 1)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/noti_item.png",
                              scale: 2,
                              color: AppColors.appDarkGrey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppTextView(
                              text: "Notifications",
                              size: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.appDarkGrey,
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  PremiumMembership(),
                        ),
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        padding: const EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: AppColors.appDarkGrey, width: 1)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/store.png",
                              scale: 2,
                              color: AppColors.appDarkGrey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppTextView(
                              text: "Restore Purchases",
                              size: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.appDarkGrey,
                            )
                          ],
                        )),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/subscription.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "Subscriptions",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: AppTextView(
                      text: "About",
                      size: 15,
                      color: AppColors.appDarkGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/question.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "How-To",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/howto.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "TOS",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/feedback.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "Give Feedback",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/support.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "Support",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      padding: const EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.appDarkGrey, width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/rate.png",
                            scale: 2,
                            color: AppColors.appDarkGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "Review US",
                            size: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appDarkGrey,
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: AppTextView(
                      text: "Add a new account",
                      size: 12,
                      color: AppColors.appDarkGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            child: InkWell(
              onTap: () {
                //continue tap will go here
              },
              child: Container(
                  width: 160,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
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
                      text: "LOG OUT",
                      size: 15,
                      color: AppColors.appWhite,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
