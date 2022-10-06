import 'package:feed/screens/calender_page.dart';
import 'package:feed/screens/date_picker_page.dart';
import 'package:feed/screens/view_image_page.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> itemList = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
    "assets/images/image4.png",
    "assets/images/image5.png",
    "assets/images/image6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: PoppinsTextView(
          text: "@NiraState",
          size: 20,
          color: AppColors.appWhite,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  CalenderPage(),
                ),
              );
            },
            child: Image.asset(
              "assets/images/calender.png",
              scale: 2,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: AppColors.appLightGrey,
                    backgroundImage: AssetImage("assets/images/nirastate.png"),
                  ),
                ),
                Column(
                  children: [
                    AppTextView(
                      text: "250",
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    ),
                    AppTextView(
                      text: "Posts",
                      size: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    )
                  ],
                ),
                Column(
                  children: [
                    AppTextView(
                      text: "250K",
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    ),
                    AppTextView(
                      text: "Followers",
                      size: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    )
                  ],
                ),
                Column(
                  children: [
                    AppTextView(
                      text: "250K",
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    ),
                    AppTextView(
                      text: "Following",
                      size: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.appBlack,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextView(
              text: "Nirastate",
              size: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.appBlack,
            ),
            AppTextView(
              text:
                  "Lorem ipsum dolor sit amet Consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
              size: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.appBlack,
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.zero,
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: itemList
                    .map(
                      (value) => InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  ViewImage(imageUrl: value),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(2),
                          height: 100,
                          width: 100,
                          color: AppColors.appGrey,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                value,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              Positioned(
                                  top: 5,
                                  right: 5,
                                  child: Image.asset(
                                    "assets/images/timer.png",
                                    height: 15,
                                    width: 15,
                                    color: AppColors.appWhite,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }
}
