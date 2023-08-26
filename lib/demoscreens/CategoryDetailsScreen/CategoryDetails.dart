import 'package:ecommerce/demoscreens/CartScreen/cartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import 'WishListScreen.dart';

class CategoryDetails extends StatefulWidget {
  CategoryDetails({Key? key}) : super(key: key);
  static const routeName = '/home-screen';

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class _CategoryDetailsState extends State<CategoryDetails> {
  PageController controller = PageController();
  int _currentIndex = 0;
  List<String> mobileTitle = [
    'Poco C31 (3 GB 32 GB)',
    'Realme C33 (4 GB 64 GB)',
    'Redmi 10A (4 GB 64 GB)',
    'Poco M5 (4 GB 64 GB)',
    'Samsung A81 (3 GB 32 GB)',
    'Apple 14 Pro (8 GB 128 GB)',
    'Poco M5 (4 GB 64 GB)',
    'Samsung A81 (3 GB 32 GB)',
    'Apple 14 Pro (8 GB 128 GB)',
  ];
  List<String> saleMovingList = [
    'FAST MOVING',
    '',
    'FAST MOVING',
    'FAST MOVING',
    '',
    'FAST MOVING',
    'FAST MOVING',
    '',
    'FAST MOVING',
  ];
  List<String> menMovingList = [
    'QUALITY PACK',
    'FAST MOVING',
    'BEST SELLING',
    'FAST MOVING',
    'BEST SELLING',
    'FAST MOVING',
    'FAST MOVING',
    'BEST SELLING',
    'FAST MOVING',
  ];
  List<String> mobileColor = [
    'Royal Blue,Shadow Grey',
    'Aqua Ablue',
    'Charocal Black,Sea Blue',
    'Black,Ice Blue,3 More',
    'Royal Blue,Shadow Grey',
    'Black,Ice Grey',
    'Black,Ice Blue,3 More',
    'Royal Blue,Shadow Grey',
    'Black,Ice Grey',
  ];
  List<String> mobileImages = [
    'assets/phone1.jpg',
    'assets/phone2.jpg',
    'assets/phone1.jpg',
    'assets/phone2.jpg',
    'assets/phone1.jpg',
    'assets/phone2.jpg',
    'assets/phone1.jpg',
    'assets/phone2.jpg',
    'assets/phone2.jpg',
  ];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  Screen? size;

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
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Center(
                child: Container(
                  height: 5,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: grey2),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.close,
                          color: titlecolor,
                          size: 22,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 35,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: borderColor)),
                            child: Column(
                              children: [
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Price - ₹",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "MOQ",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Margin - %",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "RAM",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "ROM",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Battery Capacity",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Black Camera",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Screen Size",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Smart Phones",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Brand",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                ),
                                Container(
                                  color: containColor,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Rating",
                                      style: TextStyle(
                                          color: titlecolor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: grey2,
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 65,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "265",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "6 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "100",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "2 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "68",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "8 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "68",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "3 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "53",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "1 GB",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_box_outline_blank,
                                              color: primaryColor,
                                              size: 23,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4 GB + 3 GB Virtual",
                                              style: TextStyle(
                                                  color: titlecolor,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.withOpacity(0.10),
                                ),
                              ],
                            ),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                  setState(() {
                    filterEnable = true;
                  });
                },
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: bouttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  bool filterEnable = false;

  void openBottomSheet() {
    Get.bottomSheet(
      Column(
        children: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              height: 5,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: grey2),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Icon(
                Icons.check,
                color: titlecolor,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "New And Popular",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "Popularity",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "Latest",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "New And Popular",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "New And Popular",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "₹:Low to High",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "₹:High to Low ",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "MOQ:Low to High",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "Margin Percent",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                "Rating",
                style: TextStyle(
                    color: titlecolor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ]),
          ),
          Container(
            height: 0.50,
            color: grey2,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List categaryList = [
    "Men T-Shirt",
    "Men Shirt",
    "Men Jeans",
    "Men T-Shirt",
  ];
  List menImages = [
    "assets/fs1.jpg",
    "assets/fs2.jpg",
    "assets/fs3.jpg",
    "assets/fs4.jpg",
    "assets/fs5.jpg",
    "assets/fs1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
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
          "Products",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [

                InkWell(
                    onTap: () {
                      Get.to(()=>WishListScreenPage());
                    },
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: grey2,
                    )),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: grey2,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: openBottomSheet,
                  child: Container(
                      height: 20,
                      child: Row(
                        children: [
                          Icon(
                            Icons.sort,
                            color: grey2,
                            size: 15,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Sort",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ),
                Container(height: 22, width: 2, color: grey2),
                InkWell(
                  onTap: bottmSheet,
                  child: Container(
                      height: 20,
                      child: Row(
                        children: [
                          filterEnable
                              ? Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                  ),
                                )
                              : Icon(
                                  Icons.filter_list,
                                  color: grey2,
                                  size: 15,
                                ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 11),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            filterEnable
                ? Container(
                    height: 1,
                    color: grey1,
                  )
                : Container(),
            filterEnable
                ? Container(
                    color: grey2.withOpacity(0.30),
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 15),
                      child: Text(
                        "Filter by Product Type",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: titlecolor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  )
                : Container(),
            filterEnable
                ? Container(
                    height: 80,
                    color: grey2.withOpacity(0.30),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: categaryList.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 18, top: 10, bottom: 25),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: grey2, width: 1)),
                            child: Center(
                              child: Text(
                                categaryList[index],
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container(),
            filterEnable
                ? Container(
                    height: 1,
                    color: grey1,
                  )
                : Container(),
            Container(
              width: double.infinity,
              color: grey2.withOpacity(0.30),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                child: Text(
                  "434 results",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ),
            ),
            filterEnable
                ? Container(
                    height: 600,
                    child: GridView.builder(
                      itemCount: menImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 400, crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: grey1, width: 0.50),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                menImages[index],
                                              )),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Positioned(
                                    right: 1,
                                    top: 14,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: grey4, width: 1.5)),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: grey4,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 4,
                                      left: 10,
                                      child: Container(
                                        height: 15,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xffBA6F01),
                                                  Colors.amber
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.deepOrange),
                                        child: Center(
                                          child: Text(
                                            menMovingList[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 8),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: grey2.withOpacity(0.30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.red),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "4.4",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 10),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 10,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Text(
                                            "Technosport",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  child: Text(
                                    "Power Clif By Stacktrail Dry Fit Round Neck Logo Print T-Shirt...",
                                    style: TextStyle(
                                        color: Color(0xff919191),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.safety_check_outlined,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "DIRECT FROM",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.storefront_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "RM Fulfilled",
                                        style: TextStyle(
                                            color: Color(0xff919191),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    itemCount: mobileImages.length,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 80,
                                          child:
                                              Image.asset(mobileImages[index]),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  mobileTitle[index],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: Container(
                                                    height: 22,
                                                    width: 22,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border.all(
                                                            color: grey4,
                                                            width: 1.5)),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color: grey4,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              mobileColor[index],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            saleMovingList[index] != ""
                                                ? Container(
                                                    height: 15,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.deepOrange),
                                                    child: Center(
                                                      child: Text(
                                                        saleMovingList[index],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  )
                                                : SizedBox.shrink(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 28,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: primaryColor,
                                                      width: 1)),
                                              child: Center(
                                                child: Text(
                                                  "View price",
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 1,
                            color: grey2,
                          )
                        ],
                      );
                    },
                  )
          ],
        ),
      ),
    );
  }
}
