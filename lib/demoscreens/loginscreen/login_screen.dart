import 'package:ecommerce/demoscreens/otpScreens/Otp.dart';
import 'package:ecommerce/demoscreens/signupscreen/signupScreen.dart';
import 'package:ecommerce/demoscreens/widgets/long_button.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:ecommerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import '../../utils/BottomNavigation/bottom_navigation.dart';
import '../ForgotPasswordScreen/ForgotPasswordScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Screen? size;
  var visibility = true;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  child: Image.asset("assets/authentication_re_svpt.png"),
                ),
                SizedBox(
                  width: size?.wp(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Authenticator",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Protect your account in just a few minutes by rewiewing your security setting and activity",
                    style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                    // softWrap: false,
                    // overflow: TextOverflow.ellipsis,
                  ),
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
                              icon: Icon(Icons.person_outline, size: 21),
                              hintText: 'Email'),
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
                            icon: Icon(
                              Icons.password_outlined,
                              size: 20,
                            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Text(
                          'Forgot Password?',
                          textScaleFactor: 1.25,
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size?.wp(5),
                    ),
                  ],
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
                    text: 'Login'),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                Container(
                  width: size?.wp(85),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: grey1,
                      endIndent: 15,
                      thickness: 1,
                    )),
                    Text(
                      "OR",
                      textScaleFactor: 1,
                      style:
                          TextStyle(color: grey2, fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: Divider(
                        color: grey1,
                        thickness: 1,
                        indent: 15,
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Container(
                    width: size?.wp(87),
                    height: size?.hp(5),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            textScaleFactor: 1.25,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: grey3,
                            ),
                          )),
                    ),
                  ),
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