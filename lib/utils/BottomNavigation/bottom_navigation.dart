import 'package:ecommerce/demoscreens/CategoryScreen/categoryScreen.dart';
import 'package:ecommerce/demoscreens/homeScreen/cart.dart';
import 'package:ecommerce/demoscreens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../demoscreens/CartScreen/cartScreen.dart';
import '../colors/colors.dart';
import 'controller.dart';

BottomNavigationController controller = Get.put(BottomNavigationController());

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> _children = [
    homeScreen(),
    CategoryScreen(),
    CartScreen(),
    TeachHome(),
  ];

  int selectedIndex = 0;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontFamily: 'Roboto', color: titlecolor, fontSize: 8.0);

    return Obx(() {
      int index = controller.tabIndex.toInt();
      return Scaffold(
        body: _children[selectedIndex],
        // bottomNavigationBar:BottomButton(selectindex:selectedIndex, onTap: () {  selectedIndex = index; },)
        bottomNavigationBar: SizedBox(
          height: 50.0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            unselectedItemColor: textColor,
            currentIndex: selectedIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: labelTextStyle,
            unselectedLabelStyle: labelTextStyle,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'CART',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'ACCOUNT',
              ),
            ],
          ),
        ),
      );
    });
  }
}
