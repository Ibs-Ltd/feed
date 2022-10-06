
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget{
  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  final todaysDate = DateTime.now();
  var _focusedCalendarDate = DateTime.now();
  final _initialCalendarDate = DateTime(2000);
  final _lastCalendarDate = DateTime(2050);
  DateTime? selectedCalendarDate;
  List<EventItem> itemList = [
    EventItem("assets/images/image1.png","In 3 Minutes"),
    EventItem( "assets/images/image2.png","In 3 Hours"),
    EventItem( "assets/images/image3.png","In 5 Minutes"),
    EventItem( "assets/images/image4.png","In 20 Minutes"),
    EventItem("assets/images/image5.png","In 2 Hours",),
    EventItem("assets/images/image1.png","In 3 Minutes"),
    EventItem( "assets/images/image2.png","In 3 Hours"),
    EventItem( "assets/images/image3.png","In 5 Minutes"),
    EventItem( "assets/images/image4.png","In 20 Minutes"),
    EventItem("assets/images/image5.png","In 2 Hours",),
  ];

  @override
  void initState() {
    selectedCalendarDate = _focusedCalendarDate;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: PoppinsTextView(
          text: "Calender",
          size: 20,
          color: AppColors.appWhite,
          fontWeight: FontWeight.bold,
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    shape:  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: TableCalendar(
                      focusedDay: _focusedCalendarDate,
                      firstDay: _initialCalendarDate,
                      lastDay: _lastCalendarDate,
                      calendarFormat: CalendarFormat.month,
                      weekendDays: const [DateTime.sunday, 6],
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      daysOfWeekHeight: 25.0,
                      rowHeight: 35.0,
                      weekNumbersVisible: false,
                      headerStyle:  HeaderStyle(
                        titleCentered: true,
                        titleTextFormatter: (date, locale) => DateFormat.MMMM(locale).format(date).toUpperCase(),
                        titleTextStyle:
                        TextStyle(color: AppColors.appWhite, fontSize: 25.0,),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,),
                        formatButtonVisible: false,
                        headerPadding:const EdgeInsets.all(6),
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          color: AppColors.appWhite,
                          size: 28,
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          color: AppColors.appWhite,
                          size: 28,
                        ),
                      ),
                      // Calendar Days Styling
                      daysOfWeekStyle:  DaysOfWeekStyle(
                        // Weekend days color (Sat,Sun)
                        weekdayStyle: TextStyle(color: AppColors.appGrey,fontFamily: 'Gilroy'),
                        weekendStyle: TextStyle(color: AppColors.appGrey,fontFamily: 'Gilroy'),
                      ),
                      // Calendar Dates styling
                      calendarStyle:  CalendarStyle(
                        outsideTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        withinRangeTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        defaultTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        weekendTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        todayTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        todayDecoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primaryColor)
                        ),
                        selectedTextStyle: TextStyle(color: AppColors.appDarkGrey,fontFamily: 'Gilroy',fontSize: 12),
                        selectedDecoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primaryColor)
                        ),
                      ),
                      selectedDayPredicate: (currentSelectedDate) {
                        return (isSameDay(
                            selectedCalendarDate!, currentSelectedDate));
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        // as per the documentation
                        if (!isSameDay(selectedCalendarDate, selectedDay)) {
                          setState(() {
                            selectedCalendarDate = selectedDay;
                            _focusedCalendarDate = focusedDay;
                          });
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: PoppinsTextView(text: "Upcoming Posts",size:18,fontWeight: FontWeight.bold,color: AppColors.appBlack,),
                ),
                const SizedBox(height: 10,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemList.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) =>  InkWell(
                    onTap: (){
                      //story tap will go here
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 45),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Container(
                          padding:const EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width-60,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(itemList[index].url,height: 80,width: 80, fit: BoxFit.cover,)),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppTextView(text: itemList[index].time,size:15,fontWeight: FontWeight.bold,color: AppColors.appBlack,),
                                  const SizedBox(
                                    height: 8,
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
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}

class EventItem{
  String url;
  String time;
  EventItem(this.url, this.time);
}