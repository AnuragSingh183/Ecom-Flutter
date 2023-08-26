import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors/colors.dart';
import '../widgets/long_button.dart';

class ChangeAddressScreen extends StatefulWidget {
  const ChangeAddressScreen({super.key});

  @override
  State<ChangeAddressScreen> createState() => _ChangeAddressScreenState();
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  void bottmSheet() async {
    await showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Your Location",
                    style: TextStyle(
                        color: OrderColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Unnamed Road New Delhi - 345828",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: myinputborder(), //normal border
                      labelText: "Flat/House No/Flore/Building*",
                      labelStyle: TextStyle(
                        color: OrderColor
                      )
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: myinputborder(), //normal border
                        labelText: "Enter your full name*",
                        labelStyle: TextStyle(
                            color: OrderColor
                        )
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: myinputborder(), //normal border
                        labelText: "10-digit mobile number*",
                        labelStyle: TextStyle(
                            color: OrderColor
                        )
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: myinputborder(), //normal border
                        labelText: "Alternate mobile number(optional)",
                        labelStyle: TextStyle(
                            color: OrderColor
                        )
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Type Of Address",
                    style: TextStyle(
                        color: OrderColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 3,
                  color: grey2.withOpacity(0.30),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child:Text(
                        "Save Address",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
      //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 1,
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor
        ),
        child: Center(
          child:
          Text(
            "DELIVER HERE",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Select Address (4)",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(
                        "Address",
                        style: TextStyle(
                            color: titlecolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: 2,
                        width: 180,
                        color: grey2,
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),


                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(
                        "Payment",
                        style: TextStyle(
                            color: titlecolor.withOpacity(0.60),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 3,
              color: grey2.withOpacity(0.50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: InkWell(
                onTap: bottmSheet,
                child: Row(
                  children: [
                    Text(
                      "+",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 35),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add New Address",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 3,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: Icon(
                                Icons.radio_button_checked_sharp,
                                color: Colors.blue,size: 30,
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(children: [
                                    Text(
                                      "Ravi Kumar",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: grey2.withOpacity(0.30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Text(
                                              "Home",
                                              style: TextStyle(
                                                  color: Color(0xff88898D),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,top: 10),
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(width: 1, color: OrderColor)),
                                    child: Center(
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Text(
                              "Chandni Chowk,Near pala School,",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "Jantarmantar,Delhi - 745236",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6345859652",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),

                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: Icon(
                                Icons.radio_button_off,
                                color: grey2,size: 30,
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kishan Debian",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                            Text(
                              "Chandni Chowk,Near pala School,",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "Jantarmantar,Delhi - 745236",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6345859652",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),

                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: Icon(
                                Icons.radio_button_off,
                                color: grey2,size: 30,
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(children: [
                                    Text(
                                      "Ravi Kumar",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: grey2.withOpacity(0.30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Text(
                                              "Home",
                                              style: TextStyle(
                                                  color: Color(0xff88898D),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],),
                                ),


                              ],
                            ),
                            Text(
                              "Chandni Chowk,Near pala School,",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "Jantarmantar,Delhi - 745236",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6345859652",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),

                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
