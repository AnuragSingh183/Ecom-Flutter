import 'package:ecommerce/demoscreens/widgets/long_button.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:ecommerce/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../utils/BottomNavigation/bottom_navigation.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const routeName = '/login-screen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Screen? size;
  final visibility = true;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: thirdColor,
      body: SafeArea(
        child: Center(
          child: Container(
            color: thirdColor,
            child: Column(
              children: [
                SizedBox(
                  height: size?.hp(3),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  height: getHeight(context) / 3.5,
                  width: getWidth(context),
                  child: Image.asset("assets/sign_up_n6im.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                Container(
                  width: size?.wp(87),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: titlecolor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.person_outline),
                              hintText: 'Name'),
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(2),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: titlecolor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.mobile_screen_share_sharp,
                                size: 21,
                              ),
                              hintText: 'Phone No.'),
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(2),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: titlecolor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.email_outlined, size: 21),
                              hintText: 'Email Address'),
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(2),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: titlecolor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.password, size: 21),
                            hintText: 'Password',
                            // suffixIcon:
                            //     visibility ? VisibilityOn() : VisibilityOff(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                LongButton(
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigation()));
                    },
                    text: 'Submit'),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                SizedBox(
                  height: size?.hp(0.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
