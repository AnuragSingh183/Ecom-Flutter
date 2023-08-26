import 'package:ecommerce/demoscreens/models/Category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CategoryDetailsScreen/CategoryDetails.dart';


class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, bottom: 5),
        margin: EdgeInsets.only(top: 5, bottom: 10),
        child: GridView.count(
          crossAxisCount: 4,

          shrinkWrap: true,
          children: List.generate(
            demo_categories.length,
            (index) {
              return InkWell(
                onTap: (){
                  Get.to(()=>CategoryDetails());
                },
                child: CategoryCard(
                  icon: demo_categories[index].icon,
                  title: demo_categories[index].title,
                  press: () {},
                ),
              );
            },
          ),
          // child: ListView.separated(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: demo_categories.length,
          //   itemBuilder: (context, index) => CategoryCard(
          //     icon: demo_categories[index].icon,
          //     title: demo_categories[index].title,
          //     press: () {},
          //   ),
          //   separatorBuilder: (context, index) =>
          //       const SizedBox(width: defaultPadding),
          // ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(icon),
            minRadius: 15,
            maxRadius: 25,
          ),
          Text(title)
        ],
      ),
    );
  }
}
