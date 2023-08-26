import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

import '../../utils/colors/colors.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  bool update = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Order Details",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Order ID : 0dAfHKKHJSSSK256",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "realme 10 Pro+ 5G(Nebula Blue,128 GB)",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.80),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 19),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nebula Blue",
                            style: TextStyle(
                                color: OrderColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 20,
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/phone2.jpg")),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Seller: Vision Star",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      "₹23,058",
                      style: TextStyle(
                          color: titlecolor.withOpacity(0.90),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "4 Offers",
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: OrderTrackerZen(
                text_primary_color: titlecolor.withOpacity(0.80),
                tracker_data: [
                  TrackerData(
                    title: "Order Placed",
                    tracker_details: [
                      update
                          ? TrackerDetails(
                              title: "17 June, 2023",
                              datetime: '',
                            )
                          : TrackerDetails(
                              title: "",
                              datetime: '',
                            ),
                    ],
                    date: '',
                  ),
                  TrackerData(
                    title: "Packed",
                    date: "",
                    tracker_details: [
                      update
                          ? TrackerDetails(
                              title: "19 June, 2023",
                              datetime: "",
                            )
                          : TrackerDetails(
                              title: "",
                              datetime: "",
                            ),
                    ],
                  ),
                  TrackerData(
                    title: "Shipped",
                    date: "",
                    tracker_details: [
                      update
                          ? TrackerDetails(
                              title: "19 June, 2023",
                              datetime: "",
                            )
                          : TrackerDetails(
                              title: "",
                              datetime: "",
                            ),
                    ],
                  ),
                  TrackerData(
                    title: "Delivered",
                    date: "",
                    tracker_details: [
                      update
                          ? TrackerDetails(
                              title: "26 June, 2023",
                              datetime: "",
                            )
                          : TrackerDetails(
                              title: "",
                              datetime: "",
                            ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      update = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        "See All Updates",
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1.50,
              color: grey2,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Want to return item?",
                      style: TextStyle(
                          color: titlecolor.withOpacity(0.85),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text(
                      "You can create a return for this order by 3 Jul,2023",
                      style: TextStyle(
                          color: titlecolor.withOpacity(0.60),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1.50,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create Return",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "View Return Policy",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.60),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Ordered On",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "17 June,2023",
                  style: TextStyle(
                      color: titlecolor.withOpacity(0.80),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Order Id",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "0dAfHKKHJSSSK256",
                  style: TextStyle(
                      color: titlecolor.withOpacity(0.80),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Order Amount",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "₹9,209",
                  style: TextStyle(
                      color: titlecolor.withOpacity(0.80),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Amount",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "₹9,209",
                  style: TextStyle(
                      color: titlecolor.withOpacity(0.80),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice Id",
                            style: TextStyle(
                                color: OrderColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ST4C5DFD/FDFD455445",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.80),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.download_outlined,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Logistic Invoice Id",
                            style: TextStyle(
                                color: OrderColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "LMFD4C5D23/FDFD455445",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.80),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.download_outlined,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ravi Kumar",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Chandani chowk",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "Near pala School",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "Jantarmantar",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "Delhi - 754101",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "Phone number: 637054545645",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Price Details",
                  style: TextStyle(
                      color: OrderColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "List price",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  RichText(
                    text: new TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: '₹25,999',
                          style: new TextStyle(
                            color: titlecolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seling price",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "₹25,999",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Extra Discount",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "- ₹3000 ",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special Price",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "₹22,999",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping fee + Secured Packaging Fee",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "₹99",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Discount",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "- ₹40",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "₹23,058",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Promoted",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/free2.jpg",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 15,
              color: grey2.withOpacity(0.60),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Help",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Call Customer Support",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: titlecolor,size: 17,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chat With Customer Support",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: titlecolor,size: 17,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: grey2,
            ),
          ],
        ),
      ),
    );
  }
}
