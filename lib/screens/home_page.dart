import 'package:feed/screens/profile_page.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProjectItem> itemList = [
    ProjectItem("Nirastate", "assets/images/nirastate.png", false),
    ProjectItem("Atica", "assets/images/atica.png", false),
    ProjectItem("ZooTv", "assets/images/zoo_tv.png", false),
    ProjectItem("Kyan", "assets/images/kyan.png", false),
    ProjectItem("Nirastate", "assets/images/nirastate.png", false),
    ProjectItem("Atica", "assets/images/atica.png", false),
    ProjectItem("ZooTv", "assets/images/zoo_tv.png", false),
    ProjectItem("", "assets/images/add_large.png", true),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const PoppinsTextView(
          text: "My Projects",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: itemList.map((ProjectItem value) {
              return InkWell(
                onTap: () {
                  if (value.isLast) {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) => _buildBottomSheet());
                  }else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  ProfilePage(),
                      ),
                    );
                  }
                },
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: AppColors.appLightGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(value.logoUrl,height: 60,width: 60,),
                          Positioned(
                              top: 5,
                              left: 5,
                              child: Image.asset(
                                "assets/images/insta.png",
                                height: 15,
                                width: 15,
                              ))
                        ],
                      ),
                    ),
                    AppTextView(
                      text: value.name,
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  _buildBottomSheet() {
    String dropdownvalue = 'Social Media';
    var items = [
      'Social Media',
      'Facebook',
      'Twitter',
      'Instagram',
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 5,
          width: 60,
          decoration: BoxDecoration(
              color: AppColors.appLightGrey,
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              color: AppColors.appLightGrey,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/photo.png",height: 70,width: 70,),
              const SizedBox(
                height: 5,
              ),
              AppTextView(
                text: "Add photo",
                color: AppColors.appGrey,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
            height: 35,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.appGrey, width: 1)),
            child: TextFormField(
              cursorColor: AppColors.appGrey,
              decoration: InputDecoration(
                hintText: "Project Name",
                hintStyle: TextStyle(color: AppColors.appGrey,fontFamily: "Gilroy"),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                    left: 5, bottom: 10, top: 10, right: 5),
              ),
            )),
        Container(
            padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
            height: 35,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.appGrey, width: 1)),
            child: TextFormField(
              cursorColor: AppColors.appGrey,
              decoration: InputDecoration(
                hintText: "Username",
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
        Container(
            padding: const EdgeInsets.only(top: 3, bottom: 3, left: 3),
            height: 35,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
                    text: "",
                    color: AppColors.appGrey,
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            //continue tap will go here
          },
          child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: AppTextView(
                  text: "Add",
                  size: 18,
                  color: AppColors.appWhite,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
      ],
    );
  }
}

class ProjectItem {
  String name;
  String logoUrl;
  bool isLast;

  ProjectItem(this.name, this.logoUrl, this.isLast);
}
