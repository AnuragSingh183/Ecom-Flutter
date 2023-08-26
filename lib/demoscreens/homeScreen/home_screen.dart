import 'package:ecommerce/demoscreens/components/categories.dart';
import 'package:ecommerce/demoscreens/components/new_arrival_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../CartScreen/MyCartScreen.dart';
import '../CartScreen/cartScreen.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);
  static const routeName = '/home-screen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class _homeScreenState extends State<homeScreen> {
  PageController controller = PageController();
  int _currentIndex = 0;
  List<String> offerPercentage = ['10%', '30%', '50%'];
  List<String> offerImage = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg'
  ];
  @override
  void initState() {
    /// initialized [conroller] after the screen is loaded
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    /// [conroller] remove from the widget tree permanantly after the screen is closed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: Container(
          width: double.infinity,
          alignment: Alignment.center,
          height: 45,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: cblack10, borderRadius: BorderRadius.circular(5)),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                hintText: 'Search here...',
                border: InputBorder.none),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Icon(Icons.notifications_outlined),
                SizedBox(
                  width: 15,
                ),
                InkWell(onTap: (){
                  Get.to(()=>CartScreen());
                },child: Icon(Icons.shopping_cart)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200

                    ,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: offerPercentage.length,
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      itemBuilder: (context, i1) {
                        return Stack(
                          children: [
                            Image.asset(
                              offerImage[i1],
                              height: getHeight(context) / 4,
                              width: MediaQuery.of(context).size.width,
                              colorBlendMode: BlendMode.softLight,
                              fit: BoxFit.cover,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 15,
                          child: ListView.builder(
                            itemCount: offerPercentage.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemBuilder: (BuildContext context, int i2) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 5,
                                  width: 5,
                                  decoration: _currentIndex == i2
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15))
                                      : BoxDecoration(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          shape: BoxShape.circle),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //vGap(20),
              Categories(),
              //Categories(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NewArrivalProducts(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NewArrivalProducts(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: getHeight(context) / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/banner2.jpg")),
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Products",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),

              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(4),
                crossAxisSpacing: 2,
                shrinkWrap: true,
                mainAxisSpacing: 4,
                crossAxisCount: 3,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/gaming4.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey2.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Gaming",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/chair2.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey1.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Furniture",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/electronics1.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey1.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Watches",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/electronics4.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey1.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Cameras",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/apparel1.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey1.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Apparel",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getHeight(context) / 2,
                      width: getWidth(context) / 1.5,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image.asset("assets/purse.jpg"),
                            Container(
                              height: 30,
                              width: getWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: grey1.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                              child: Text(
                                "Acceaaories",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              vGap(20)
            ],
          ),
        ),
      ),
    );
  }
}
