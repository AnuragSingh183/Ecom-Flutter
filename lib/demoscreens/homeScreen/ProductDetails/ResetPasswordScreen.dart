import 'package:flutter/material.dart';

import '../../../utils/avatar.dart';
import '../../../utils/colors/colors.dart';
import '../../widgets/long_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
          "Reset Password",
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
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 200,
                width: 300,
                child: Image.asset(
                  forgotPass,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Current Password",
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
                      hintText: 'Enter Your Current Password'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "New Password",
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
                      hintText: 'Enter Your New Password'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Confirm Password",
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
                      hintText: 'Enter Your Confirm Password'),
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
                text: 'Reset Password'
                    ''
                    ''),
          ],),
        ),
      ),
    );
  }
}
