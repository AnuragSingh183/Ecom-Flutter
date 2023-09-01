import 'package:ecommerce/demoscreens/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../widgets/long_button.dart';

class CreatNewPasswordScreen extends StatelessWidget {
  final String baseUrl;
  final String token;
  const CreatNewPasswordScreen(
      {super.key, required this.baseUrl, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create New Password",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
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
            Text(
              "Your New Password Must Be Different",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Text(
              "from Previously Used Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
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
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.password_outlined,
                        size: 21,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter New Password'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
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
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: titlecolor),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.password_outlined,
                        size: 21,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter Confirm Password'),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Change Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            LongButton(
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen(
                                baseUrl: baseUrl,
                                token: token,
                              )));
                },
                text: 'Confirm'),
          ],
        ),
      ),
    );
  }
}
