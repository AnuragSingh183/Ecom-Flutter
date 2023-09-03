import 'package:ecommerce/utils/colors/colors.dart';
import 'package:ecommerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  late String text;
  late Function() action;

  LongButton({
    required this.action,
    required this.text,
  });

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(87),
      height: size?.hp(5),
      decoration: BoxDecoration(
          color: Color(0xFF71a1d1), borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          textScaleFactor: 1.25,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: thirdColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
