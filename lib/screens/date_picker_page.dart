import 'package:carousel_slider/carousel_slider.dart';
import 'package:feed/utils/app_colors.dart';
import 'package:feed/widgets/custom_text_view.dart';
import 'package:feed/widgets/poppins_text_view.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  CarouselController buttonCarouselController = CarouselController();
  CarouselController hourController = CarouselController();
  CarouselController minuteController = CarouselController();
  CarouselController apController = CarouselController();
  int selectedMonth = 1;
  int initialPage = 0;
  String dropdownvalue = 'JAN';
  late List<int> dateList;
  List<String> formatList = ["AM", "PM"];
  List<String> hourList = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12"
  ];
  List<String> minuteList = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "00"
  ];
  List<String> list = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC",
  ];

  Map<String, int> map = {
    "JAN": 1,
    "FEB": 2,
    "MAR": 3,
    "APR": 4,
    "MAY": 5,
    "JUN": 6,
    "JUL": 7,
    "AUG": 8,
    "SEP": 9,
    "OCT": 10,
    "NOV": 11,
    "DEC": 12
  };

  @override
  void initState() {
    setState(() {
      dateList = getDateList();
      initialPage = (dateList.length / 2).round();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: PoppinsTextView(
          text: "Pick Date",
          size: 20,
          color: AppColors.appWhite,
          fontWeight: FontWeight.bold,
        ),
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
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 8, right: 5),
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.appLightGrey,
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.appBlack,
                        ),
                        items: list.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: PoppinsTextView(
                              text: item,
                              fontWeight: FontWeight.bold,
                              color: AppColors.appBlack,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            //selected value will be fetched here
                            initialPage = (dateList.length / 2).round();
                            dropdownvalue = value!;
                            selectedMonth = map[value]!;
                            dateList = getDateList();
                          });
                        },
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            buttonCarouselController.previousPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.linear);
                          },
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 13,
                              color: AppColors.appGrey,
                            ),
                          ),
                        ),
                        Expanded(
                          child: CarouselSlider(
                            carouselController: buttonCarouselController,
                            options: CarouselOptions(
                                height: 60,
                                viewportFraction: 0.2,
                                initialPage: initialPage,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                autoPlay: false,
                                onPageChanged: (index, reason) {
                                  setState(() {});
                                }),
                            items: dateList
                                .map(
                                  (int e) => Container(
                                    width: 50,
                                    child: Center(
                                      child: PoppinsTextView(
                                        text: e.toString(),
                                        size: 30,
                                        color: AppColors.appBlack,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            buttonCarouselController.nextPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.linear);
                          },
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                              color: AppColors.appGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 60,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.primaryColor, width: 2)))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                PoppinsTextView(
                  text: "Pick Time",
                  size: 15,
                  color: AppColors.appBlack,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 80,
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    hourController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        curve: Curves.linear);
                                  },
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      size: 20,
                                      color: AppColors.appGrey,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CarouselSlider(
                                    carouselController: hourController,
                                    options: CarouselOptions(
                                        height: 60,
                                        viewportFraction: 0.3,
                                        initialPage: 6,
                                        enlargeCenterPage: true,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.vertical,
                                        autoPlay: false,
                                        onPageChanged: (index, reason) {
                                          setState(() {});
                                        }),
                                    items: hourList
                                        .map(
                                          (String e) => Container(
                                            width: 50,
                                            child: Center(
                                              child: PoppinsTextView(
                                                text: e,
                                                size: 30,
                                                color: AppColors.appBlack,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    hourController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        curve: Curves.linear);
                                  },
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      size: 20,
                                      color: AppColors.appGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 60,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 2)))
                          ],
                        ),
                      ),
                      AppTextView(
                        text: ":",
                        color: AppColors.appBlack,
                        size: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    minuteController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        curve: Curves.linear);
                                  },
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      size: 20,
                                      color: AppColors.appGrey,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CarouselSlider(
                                    carouselController: minuteController,
                                    options: CarouselOptions(
                                        height: 60,
                                        viewportFraction: 0.3,
                                        initialPage: 30,
                                        enlargeCenterPage: true,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.vertical,
                                        autoPlay: false,
                                        onPageChanged: (index, reason) {
                                          setState(() {});
                                        }),
                                    items: minuteList
                                        .map(
                                          (String e) => Container(
                                            width: 50,
                                            child: Center(
                                              child: PoppinsTextView(
                                                text: e,
                                                size: 30,
                                                color: AppColors.appBlack,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    minuteController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        curve: Curves.linear);
                                  },
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      size: 20,
                                      color: AppColors.appGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 60,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 2)))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: CarouselSlider(
                                    carouselController: apController,
                                    options: CarouselOptions(
                                        height: 60,
                                        viewportFraction: 0.2,
                                        initialPage: 1,
                                        enlargeCenterPage: true,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.vertical,
                                        autoPlay: false,
                                        onPageChanged: (index, reason) {
                                          setState(() {});
                                        }),
                                    items: formatList
                                        .map(
                                          (String e) => Container(
                                            width: 50,
                                            child: Center(
                                              child: PoppinsTextView(
                                                text: e,
                                                size: 25,
                                                color: AppColors.appBlack,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 350,
                )
              ],
            )),
      ),
    );
  }

  getDateList() {
    DateTime noew = DateTime.now();
    var now = DateTime(noew.year, selectedMonth);

    // Getting the total number of days of the month
    var totalDays = daysInMonth(now);

    // Stroing all the dates till the last date
    // since we have found the last date using generate
    var listOfDates = List<int>.generate(totalDays, (i) => i + 1);
    return listOfDates;
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }
}
