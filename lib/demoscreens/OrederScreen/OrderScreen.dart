import 'package:ecommerce/demoscreens/OrederScreen/OrderDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors/colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title:  Text(
          "Your Orders",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search_rounded,size: 30,color: OrderColor,),
                      hintText: "Search for orders",
                      hintStyle: TextStyle(
                            color:OrderColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 18
                      )
                    ),
                  )),

            ],),

          ),
          Container(height: 1,color: grey2.withOpacity(0.50),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: titlecolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(height: 3,width: 50,
                      color: Colors.blue,),
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "Pending",
                        style: TextStyle(
                            color: OrderColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(height: 4,width: 50,
                      color: Colors.white,),
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "Rescheduled",
                        style: TextStyle(
                            color: OrderColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(height: 4,width: 50,
                      color: Colors.white,),
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "Packed",
                        style: TextStyle(
                            color: OrderColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(height: 4,width: 50,
                      color: Colors.white,),
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "Shipped",
                        style: TextStyle(
                            color: OrderColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(height: 4,width: 50,
                      color: Colors.white,),
                  ],),
                ),
              ),


            ],),
          ),
          Container(height: 5,color: grey2.withOpacity(0.50),),
          Container(
            height: 1000,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Get.to(()=>OrderDetailsScreen());
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 25,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 200,
                                      child:
                                      Image.asset("assets/fs5.jpg",),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 65,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Ordered From",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "StackTrail",
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(0.60),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Delivered",
                                          style: TextStyle(
                                              color:Colors.green,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "₹ 9,115",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Order ID : 0dAfHKKHJSSSK256",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Placed On : 17Th Jun 2023 12:40pm",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Expected by : 28th Jun",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "Rewards : 1263 coins used in the order  ",
                                          style: TextStyle(
                                              color: OrderColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 10,
                              child: Column(children: [
                                Icon(Icons.arrow_forward_ios_sharp,color:OrderColor ,size: 25,)
                              ],))
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 6,
                        color: grey2.withOpacity(0.50),
                      )
                    ],
                  ),
                );
              },
            ),
          )

        ],),
      ),
    );
  }
}
