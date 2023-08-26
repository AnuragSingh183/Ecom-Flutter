import 'package:ecommerce/demoscreens/OrederScreen/OrderScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors/colors.dart';
import 'ChangeAdress.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
                    "₹ 9662.00",
                    style: TextStyle(
                        color: titlecolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  Text(
                    "28 pcs,4 variant",
                    style: TextStyle(
                        color: Color(0xffC1C1C1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],),
              ),
              InkWell(
                onTap: (){
                  Get.to(()=>OrderScreen());
                },
                child: Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: Center(
                    child:Text(
                      "Check Out",
                      style: TextStyle(
                          color: primaryColor,
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
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_outlined,
              color: titlecolor,
            )),
        title: Text(
          "Cart (4 items)",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.withOpacity(0.05),
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
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:1000,
                  decoration: BoxDecoration(
                      color: Colors.white,
                     ),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 50,
                                          child: Image.asset("assets/fs5.jpg"),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      height: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "ALL IS WELL",
                                                  style: TextStyle(
                                                      color: Color(0xffC1C1C1),
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 5),
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Color(0xffC1C1C1),
                                                    size: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "AIWO152 1",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Add Variant",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Set Of 5 - 34,35,38,40,32",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Text(
                                  "₹ 3356.00",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "₹ 1693.00/Box",
                                      style: TextStyle(
                                          color: Color(0xffC1C1C1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.delete,size: 20,color: Color(0xffC1C1C1),),
                                    SizedBox(width: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.blue.withOpacity(0.30),

                                          ),
                                          child: Center(
                                            child:Icon(Icons.remove,size: 15,color: Colors.blue,)
                                          ),
                                        ),
                                        Container(height: 20,width: 50,decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.blue.withOpacity(0.10),

                                        ),child: Center(
                                          child:  Text(
                                            "2",
                                            style: TextStyle(
                                                color: titlecolor,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),

                                          ),
                                        ),
                                        ),
                                        Container(height: 20,width: 20,decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.blue.withOpacity(0.30),
                                        ),
                                          child:Center(
                                            child: Icon(Icons.add,size: 15,color: Colors.blue,)
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                )
                              ],
                            ),
                          ),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1,
                              color: grey1,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
              ,


            ],
          ),
        ),
      ),
    );
  }
}
