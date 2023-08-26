import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';
import '../../widgets/long_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
          "Edit Profile",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/profi.png"),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 20,
                        child: Container(
                          height:25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Icons.edit,size: 18,),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "First Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ), SizedBox(
                height: 15,
              ), Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your First Name'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Last Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ), SizedBox(
                height: 15,
              ), Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Last Name'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Mobile Number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ), SizedBox(
                height: 15,
              ), Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Mobile Number'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: titlecolor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ), SizedBox(
                height: 15,
              ), Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              LongButton(
                  action: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Otp()));
                  },
                  text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
