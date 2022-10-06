import 'package:feed/screens/add_post_page.dart';
import 'package:feed/screens/global_calender_page.dart';
import 'package:feed/screens/home_page.dart';
import 'package:feed/screens/notifications_page.dart';
import 'package:feed/screens/settings_page.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    GlobalCalendarPage(),
    AddPostPage(),
    NotificationsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          pages[pageIndex],
          Positioned(bottom: 20, child: buildMyNavBar(context))
        ],
      ),
    );
  }

  SizedBox buildMyNavBar(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width - 120,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
          ),
          Positioned(
            top: 8,
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width - 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/home.png",
                            scale: 2,
                          ),
                          pageIndex == 0
                              ? Image.asset(
                            "assets/images/pointer.png",
                            scale: 2,
                          )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/calender.png",
                            scale: 2,
                          ),
                          pageIndex == 1
                              ? Image.asset(
                            "assets/images/pointer.png",
                            scale: 2,
                          )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/add.png",
                            scale: 2,
                          ),
                          pageIndex == 2
                              ? Image.asset(
                            "assets/images/pointer.png",
                            scale: 2,
                          )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/bar_noti.png",
                            scale: 2,
                          ),
                          pageIndex == 3
                              ? Image.asset(
                            "assets/images/pointer.png",
                            scale: 2,
                          )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 4;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/user.png",
                            scale: 2,
                          ),
                          pageIndex == 4
                              ? Image.asset(
                            "assets/images/pointer.png",
                            scale: 2,
                          )
                              : Container(),
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
