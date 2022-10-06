import 'package:feed/screens/date_picker_page.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget{
  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  String dropdownvalue = 'Choose Project';

  // List of items in our dropdown menu
  var items = [
    'Choose Project',
    'NIRASTATE',
    'ATICA',
    'KYAN',
    'ZOOTV',
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
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          InkWell(
              onTap: () {
                //done code will go here
              },
              child: Center(
                  child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: PoppinsTextView(
                        text: "Done",
                        color: AppColors.appWhite,
                        fontWeight: FontWeight.bold,
                      ))))
        ],
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
            width: MediaQuery.of(context).size.width-50,
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: AppColors.appLightGrey,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Image.asset(
                    "assets/images/photo.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  DatePickerPage(),
                      ),
                    );
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.appYellow),
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  "assets/images/blue_calender.png",height: 20,width: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppTextView(
                            text: "Schedule a notification",
                            size: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appWhite,
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
                    height: 35,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.appGrey, width: 1)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 0,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue,
                              icon: Icon(Icons.keyboard_arrow_down,color: AppColors.appGrey,),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: AppTextView(text: items,color: AppColors.appGrey,),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  //selected value will be fetched here
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: AppTextView(
                            text: dropdownvalue,
                            color: AppColors.appGrey,
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
                    height: 35,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.appGrey, width: 1)),
                    child: TextFormField(
                      cursorColor: AppColors.appGrey,
                      decoration: InputDecoration(
                        hintText: "Write a caption",
                        hintStyle: TextStyle(color: AppColors.appGrey,fontFamily: 'Gilroy'),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                            left: 5, bottom: 10, top: 10, right: 5),
                      ),
                    )),

              ],
            ),
          ),
          Positioned(
            bottom: 90,
            child: InkWell(
              onTap: () {
                //continue tap will go here
              },
              child: Container(
                  width: 120,
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
                        text: "Publish Now",
                        size: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appWhite,
                      )
                    ],
                  )),
            ),
          )

        ],
      ),
    );

  }
}