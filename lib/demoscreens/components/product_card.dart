import 'package:ecommerce/demoscreens/constants.dart';
import 'package:ecommerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double? _rating;
  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        width: 130,
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: widget.bgColor,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.image)),
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
              ),
              child: Stack(
                children: [
                  Positioned(
                      right: 6,
                      top: 4,
                      child: Icon(
                        Icons.favorite_outline,
                        size: 20,
                        color: Colors.pink,
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  "\$" + widget.price.toString(),
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: _rating ?? 0.0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => Icon(
                        _selectedIcon ?? Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        _rating = rating;
                        setState(() {});
                      },
                    ),
                    hGap(20),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 18,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
