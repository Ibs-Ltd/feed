import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewImage extends StatefulWidget {
  final String imageUrl;

  const ViewImage({super.key, required this.imageUrl});

  @override
  State<ViewImage> createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
  // Initial Selected Value
  String dropdownvalue = 'ON';

  // List of items in our dropdown menu
  var items = [
    'ON',
    'OFF',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: AppColors.primaryColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 55),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(
                  widget.imageUrl,
                  height: 250,
                  width: MediaQuery.of(context).size.width - 110,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        //download tap will go here
                      },
                      child: Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.appYellow),
                                width: 30,
                                height: 30,
                                child: Icon(
                                  Icons.access_time,
                                  color: AppColors.appBlack,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              AppTextView(
                                text: "22 Sep 22",
                                size: 15,
                                fontWeight: FontWeight.bold,
                                color: AppColors.appWhite,
                              ),
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.appYellow),
                                  width: 30,
                                  height: 30,
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: dropdownvalue,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.appWhite,
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: AppTextView(
                                          text: items,
                                          size: 15,
                                          color: AppColors.appWhite,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        //selected value will be fetched here
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: AppTextView(
                      text:
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit",
                      color: AppColors.appBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: () {
                  //continue tap will go here
                },
                child: Container(
                    width: 80,
                    height: 25,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/edit.png",
                          scale: 3,
                          color: AppColors.appWhite,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppTextView(
                          text: "Edit",
                          size: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appWhite,
                        )
                      ],
                    )),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  //continue tap will go here
                },
                child: Container(
                    width: 80,
                    height: 25,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/publish.png",
                          scale: 3,
                          color: AppColors.appWhite,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppTextView(
                          text: "Publish",
                          size: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appWhite,
                        )
                      ],
                    )),
              ),
            ]),
          )

        ],
      ),
    );
  }
}
