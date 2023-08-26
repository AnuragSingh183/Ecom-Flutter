import 'package:ecommerce/demoscreens/homeScreen/ProductDetails/ViewAllReviw.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'AddReviewPage.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    List imgList = [
      'assets/tt.jpg',
      'assets/tt.jpg',
      'assets/tt.jpg',
      'assets/tt.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search_rounded),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.card_giftcard),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        height: 300,
                        child: ListView.builder(
                          controller: _controller,
                          scrollDirection: Axis.horizontal,
                          itemCount: imgList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 400,
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(imgList[index]),
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: AssetImage(imgList[index].toString()),
                              //         fit: BoxFit.fill)),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            //dot dott next
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: grey2),
                            borderRadius: BorderRadius.circular(22)),
                        child: Center(
                          child: Text(
                            "View Similer",
                            style: TextStyle(
                                color: Color(0xff616A79),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: imgList.length,
                        effect:
                            WormEffect(dotHeight: 7, dotWidth: 7, radius: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 80,
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "Masculine, Bold, Landscape T-shirt Design ",
                                  style: TextStyle(
                                      color: Color(0xff41434E),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 20,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Icon(
                                    Icons.share,
                                    color: Color(0xff42505C),
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xff142336),
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff142336),
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff142336),
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff142336),
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff142336),
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.5/5",
                        style: TextStyle(
                            color: titlecolor.withOpacity(0.80),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(2)",
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "₹899",
                        style: TextStyle(
                            color: Color(0xff41434E),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 23),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: new TextSpan(
                          children: <TextSpan>[
                            new TextSpan(
                              text: '₹1799',
                              style: new TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "50%",
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Inclusive of all taxes",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 0.80,
                    color: grey2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Selected Size - ",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.80),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                          Text(
                            "XL",
                            style: TextStyle(
                                color: titlecolor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        "SIZE CHART",
                        style: TextStyle(
                            color: Colors.pink,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(width: 1, color: grey2)),
                                child: Center(
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        color: grey2,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: grey2,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Sold out",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(width: 1, color: grey2)),
                                child: Center(
                                  child: Text(
                                    "L",
                                    style: TextStyle(
                                        color: grey2,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: grey2,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Sold out",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        width: 1, color: Colors.blue)),
                                child: Center(
                                  child: Text(
                                    "XL",
                                    style: TextStyle(
                                        color: grey2,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "6 Left!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(width: 1, color: grey2)),
                                child: Center(
                                  child: Text(
                                    "2XL",
                                    style: TextStyle(
                                        color: grey2,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: grey2,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Sold out",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 0.80,
                    color: grey2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 20,
                          child: Column(
                            children: [
                              Text(
                                "Sold by : ",
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 80,
                          child: Column(
                            children: [
                              Text(
                                "PUMA SPORTS INDIA PRIVATE LIMITED_Parent",
                                style: TextStyle(
                                    color: titlecolor.withOpacity(0.85),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_sharp,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "100% authentic",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: grey2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_police,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Easy return policy",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: Text(
                      "Check delivery date",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                    ),
                  ),
                  Expanded(
                      flex: 30,
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: grey2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Enter Pincode",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
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
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Beautiful t-shirt design featuring a vintage mountain landscape. This Graphic Tee design can be used on shirts, mugs, posters, hoodies and other merch products.",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.80),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Read More",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                          size: 18,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Rating & Reviews",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
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
                    height: 80,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 20,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Icon(
                                        Icons.rate_review_rounded,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "ReselMall is committed to showing genuine and verified reviews ",
                                      style: TextStyle(
                                          color: titlecolor.withOpacity(0.80),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 25,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "/5",
                                    style: TextStyle(
                                        color: Colors.blue.withOpacity(0.70),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Overall Rating",
                                style: TextStyle(
                                    color: titlecolor.withOpacity(0.90),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                "2 ratings",
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.85),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 25,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.to(()=>ViewAllReview());
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1, color: grey2)),
                                  child: Center(
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
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
                  Text(
                    "Beautiful t-shirt design featuring a vintage mountain landscape. This Graphic Tee design can be used on shirts, mugs, posters, hoodies and other merch produc",
                    style: TextStyle(
                        color: titlecolor.withOpacity(0.90),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>AddReviewScreen());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: grey2, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Write a Review",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      flex: 20,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: grey2, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,color: Colors.green,
                            )),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 80,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                              Icons.shopping_bag,
                              size: 25,
                                      color: Colors.white,
                            ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "Add to Bag",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.50),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  "More From Puma",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      color:titlecolor.withOpacity(0.80),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
              ],),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 330,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1,color: grey2)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          SizedBox(height: 10,),
                          Container(
                            height: 150,
                              width: 150,
                              child: Image.asset("assets/apparel5.jpg")),
                          SizedBox(height: 10,),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Puma Jada Crush Man",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Container(
                                  child: Text(
                                    "Blue Casual Cloth",
                                    style: TextStyle(
                                        color: titlecolor,
                                        fontFamily: 'Roboto',
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),
                          Text(
                            "4 Sizes ",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.70),
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹899",
                                style: TextStyle(
                                    color: Color(0xff41434E),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '₹1799',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50%",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                  flex: 20,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey2, width: 2),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 20,color: Colors.green,
                                            )),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                              "Select Size",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            )),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],),
                      ),
                    ),
                  );

              },),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Customer Also Bought",
                    style: TextStyle(
                        color: titlecolor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color:titlecolor.withOpacity(0.80),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ],),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 330,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1,color: grey2)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          SizedBox(height: 10,),
                          Container(
                              height: 150,
                              width: 150,
                              child: Image.asset("assets/apparel5.jpg")),
                          SizedBox(height: 10,),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Puma Jada Crush Man",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Container(
                                  child: Text(
                                    "Blue Casual Cloth",
                                    style: TextStyle(
                                        color: titlecolor,
                                        fontFamily: 'Roboto',
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),
                          Text(
                            "4 Sizes ",
                            style: TextStyle(
                                color: titlecolor.withOpacity(0.70),
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹899",
                                style: TextStyle(
                                    color: Color(0xff41434E),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '₹1799',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50%",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                  flex: 20,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey2, width: 2),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 20,color: Colors.green,
                                            )),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                              "Select Size",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            )),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ],),
                      ),
                    ),
                  );

                },),
            )

          ],
        ),
      ),
    );
  }
}
