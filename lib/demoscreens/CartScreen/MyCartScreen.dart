import 'package:ecommerce/demoscreens/CartScreen/ChangeAdress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors/colors.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EMI available",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    Text(
                      "₹48,418",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ],),
              ),
              InkWell(
                onTap: (){
                  // Get.to(()=>OrderScreen());
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child:Text(
                      "Place Order",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ) ,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(

        title: Text(
          "My Cart",
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
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      flex: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              child: Row(
                                children: [
                                  Text(
                                    "Delivered to:",
                                    style: TextStyle(
                                        color: titlecolor,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Ravi Kumar...,754053",
                                    style: TextStyle(
                                        color: titlecolor,
                                        fontFamily: 'Roboto',
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
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
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Chandni Chowk,Near pala School,Jantarmantar",
                                style: TextStyle(
                                    color: OrderColor,
                                    fontFamily: 'Roboto',
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 20,
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>ChangeAddressScreen());
                        },
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: OrderColor)),
                          child: Center(
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 7,
              color: grey2.withOpacity(0.50),
            ),
            ListView.builder(
              shrinkWrap: true,
               physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 20,
                              child: Column(
                                children: [
                                  Image.asset("assets/phone2.png"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 42,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 1, color: grey2)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Qty:1",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: titlecolor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              )),
                          Expanded(
                              flex: 80,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "realme 10 Pro+ 5G(Nebula Blue,128 GB)",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: titlecolor.withOpacity(0.80),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange
                                              .withOpacity(0.80),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange
                                              .withOpacity(0.80),
                                        ), Icon(
                                          Icons.star,
                                          color: Colors.orange
                                              .withOpacity(0.80),
                                        ), Icon(
                                          Icons.star,
                                          color: Colors.orange
                                              .withOpacity(0.80),
                                        ),
                                        SizedBox(width: 3,),
                                        Text(
                                          "(713)",
                                          style: TextStyle(
                                              color:OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 15),
                                        ),


                                      ],
                                    ),
                                    SizedBox(height: 48,),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "₹1,550",
                                        style: TextStyle(
                                            color:titlecolor,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),

                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "6 offer applied - 5 offer available",
                                        style: TextStyle(
                                            color:Colors.redAccent,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),



                                  ],
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Only 2 Left",
                          style: TextStyle(
                              color: titlecolor.withOpacity(0.70),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(children: [
                        Text(
                          "Delivery by Sat Jul 22 |",
                          style: TextStyle(
                              color: titlecolor.withOpacity(0.70),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        SizedBox(width: 7,),
                        Text(
                          "FREE Delivery",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),

                      ],),
                      SizedBox(height: 10,),
                      // Row(children: [
                      //   Container(
                      //     height: 70,
                      //     decoration: BoxDecoration(
                      //     border: Border.all(color: OrderColor.withOpacity(0.50),width: 0.50)
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                      //     child: Center(
                      //       child: Row(
                      //         children: [
                      //           Icon(Icons.delete,color:Color(0xff8A8B8D),),
                      //           SizedBox(width: 3,),
                      //           Text(
                      //             "Remove",
                      //             style: TextStyle(
                      //                 color:Color(0xff8A8B8D),
                      //                 fontFamily: 'Roboto',
                      //                 fontWeight: FontWeight.w500,
                      //                 fontSize: 15),
                      //           ),
                      //         ],
                      //       ) ,
                      //     ),
                      //   ),
                      //   ),
                      //   Container(
                      //     height: 70,
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: OrderColor.withOpacity(0.50),width: 0.50)
                      //     ),
                      //     child: Padding(
                      //       padding:  const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                      //       child: Center(
                      //         child: Row(
                      //           children: [
                      //             Icon(Icons.save_alt,color: Color(0xff8A8B8D),),
                      //             SizedBox(width: 3,),
                      //             Text(
                      //               "Save For Later",
                      //               style: TextStyle(
                      //                   color:Color(0xff8A8B8D),
                      //                   fontFamily: 'Roboto',
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 15),
                      //             ),
                      //           ],
                      //         ) ,
                      //       ),
                      //     ),
                      //   ),
                      //   Container(
                      //     height: 70,
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: OrderColor.withOpacity(0.50),width: 0.50)
                      //     ),
                      //     child: Padding(
                      //       padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      //       child: Center(
                      //         child: Row(
                      //           children: [
                      //             Icon(Icons.electric_bolt,color: Color(0xff8A8B8D),),
                      //             SizedBox(width: 3,),
                      //             Text(
                      //               "By This Now",
                      //               style: TextStyle(
                      //                   color: Color(0xff8A8B8D),
                      //                   fontFamily: 'Roboto',
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 15),
                      //             ),
                      //           ],
                      //         ) ,
                      //       ),
                      //     ),
                      //   )
                      // ],),
                      Container(
                        height: 2,
                        color: grey2.withOpacity(0.50),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
