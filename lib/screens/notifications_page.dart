import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget{
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<NotificationItem> itemList = [
    NotificationItem("assets/images/nirastate.png","Nirastate","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", true),
    NotificationItem( "assets/images/atica.png","Atica","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/zoo_tv.png","ZooTv","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", true),
    NotificationItem( "assets/images/kyan.png","Kyan","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem("assets/images/nirastate.png","Nirastate","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/atica.png","Atica","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/zoo_tv.png","ZooTv","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", true),
    NotificationItem( "assets/images/kyan.png","Kyan","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem("assets/images/nirastate.png","Nirastate","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/atica.png","Atica","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/zoo_tv.png","ZooTv","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
    NotificationItem( "assets/images/kyan.png","Kyan","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod", false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title:  const PoppinsTextView(text: "Notifications",fontWeight: FontWeight.bold,),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 AppTextView(text: "Mark all as read",size:16,fontWeight: FontWeight.bold,color: AppColors.primaryColor,),
                 const SizedBox(
                   width: 30,
                 )
               ],
             ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemList.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) =>  InkWell(
                onTap: (){
                  //story tap will go here
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Container(
                          padding:const EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width-60,
                          height: 80,
                          child: Row(
                            children: [
                              Image.asset(itemList[index].imageURl,height: 80,width: 80, fit: BoxFit.cover,),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppTextView(text: itemList[index].title,size:16,fontWeight: FontWeight.bold,color: AppColors.appBlack,),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(child: AppTextView(text: itemList[index].content,size: 13,color: AppColors.appBlack,))
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    itemList[index].isRead?Positioned(
                      top: 10,
                      right: 20,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryColor),
                        width: 10,
                        height: 10,
                      ),
                    ):Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class NotificationItem{
  String imageURl;
  String title;
  String content;
  bool isRead;

  NotificationItem(this.imageURl, this.title, this.content, this.isRead);
}