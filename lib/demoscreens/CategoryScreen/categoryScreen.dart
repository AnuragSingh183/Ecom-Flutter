import 'package:flutter/material.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/responsive.dart';

class CategoryScreen extends StatefulWidget {
  static const routeName = '/category-screen';

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Select Category",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.w500),
          )),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Container(
                // height: getHeight(context) / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getHeight(context) / 10,
                                  width: getWidth(context) / 4,
                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor.withOpacity(0.2)),
                                  child: Image.asset("assets/phone2.png")),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Tver State Medical University",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Tver, Russia",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      color: textColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
      // bottomSheet: Padding(
      //   padding: const EdgeInsets.only(bottom: 18.0),
      //   child: LongButton(action: () {}, text: "Continue"),
      // ),
    );
  }
}
