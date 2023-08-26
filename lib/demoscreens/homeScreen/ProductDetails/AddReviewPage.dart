import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/colors/colors.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

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
          "Review Product",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 20,
                      child: Container(
                          height: 60,
                          width: 50,
                          child: Image.asset("assets/apparel5.jpg"))),
                  Expanded(
                      flex: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Puma Jada Crush Man Blue Casual Cloth",
                              style: TextStyle(
                                  color: titlecolor,
                                  fontFamily: 'Roboto',
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: grey2,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add Photo",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: grey2)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add Photo",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Roboto',
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upload photos this product related to the product Unboxing ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      "Installation,Product Usage,etc,",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      "Learn More",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Title",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: grey2, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                   maxLines: 3,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Write Description",
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),

                    border: Border.all(color: grey2, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(

                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: () {
                  Get.back();

                },
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: bouttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Add Review",
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
          ),
        ),
      ),
    );
  }
}
