import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class CoinsScrenPage extends StatelessWidget {
  const CoinsScrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: Text(
          "Coin Balance",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 90,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "SuperCoin Balance",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.amber),
                                        child: Center(
                                          child: Icon(
                                            Icons.electric_bolt_outlined,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "359",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.arrow_forward_ios)],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ), SizedBox(
              height: 15,
            ),
            Container(
              height: 5,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Transaction History",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "SuperCoin Validity: 1 year from the date of credit",
                    style: TextStyle(
                        color: Color(0xff959595),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(flex: 90,
                      child: Column(children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                            style: TextStyle(
                                color: titlecolor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Credited on 08 Jul,2023",
                            style: TextStyle(
                                color: Color(0xff959595),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
                  Expanded(flex: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
                ],),

              ],),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color:Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color:Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
            ),
            SizedBox(
              height: 10,
            ),SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(flex: 90,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BEGAROK 33662 Trimmer 60 min Runtime 2 Lenth.. ",
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credited on 08 Jul,2023",
                          style: TextStyle(
                              color: Color(0xff959595),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],)),
                Expanded(flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "+ 36",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],)),
              ],),
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
