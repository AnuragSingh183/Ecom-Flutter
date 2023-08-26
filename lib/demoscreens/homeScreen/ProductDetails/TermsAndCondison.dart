import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          "Terms & Condition",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }
}
