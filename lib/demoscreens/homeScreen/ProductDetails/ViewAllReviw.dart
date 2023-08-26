import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';

class ViewAllReview extends StatelessWidget {
  const ViewAllReview({super.key});

  @override
  Widget build(BuildContext context) {
    List categaryList = [
      "Overall",
      "Most recent",
      "Low to high",
      "High to low",
    ];
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: White,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        titleSpacing: 0,
        title: Text(
          "All Reviews",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: categaryList.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 18, top: 10, bottom: 25),
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: grey2, width: 1)),
                      child: Center(
                        child: Text(
                          categaryList[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: titlecolor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 10,
              color: grey2.withOpacity(0.30),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      flex: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "538 ratings and",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Roboto',
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "40 reviews",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    height: 100,
                    width: 1,
                    color: grey2.withOpacity(0.30),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 6,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "272",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 6,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                                50)),

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "135",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  "3",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 6,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                                50)),

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "65",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ), SizedBox(
                              height: 5,
                            ), Row(
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 6,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                                50)),

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "22",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ), Row(
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 6,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                                50)),

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "44",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Container(
              height: 800,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      child: Column(children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green, size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green, size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green, size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green, size: 20,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Good",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Superb Products and Nice App",
                            style: TextStyle(
                                color: titlecolor,
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/apparel6.jpg"),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Ahemed Danish,srinagar",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(children: [
                          Container(
                            height: 33,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.grey, width: 1)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined, color: Colors.grey,
                                    size: 16,),
                                  SizedBox(width: 4,),
                                  Text(
                                    "helpful for 4",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Roboto',
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 33,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.grey, width: 1)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_down_alt_outlined, color: Colors.grey,
                                    size: 16,),
                                  SizedBox(width: 4,),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Roboto',
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.verified,color: Colors.black,size: 15,),
                          SizedBox(width: 10,),
                          Text(
                            "Verified Purshase Nov,2021",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ],),
                        SizedBox(height: 10,),
                        Container(height: 1,color: grey2,)
                      ],),
                    ),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
