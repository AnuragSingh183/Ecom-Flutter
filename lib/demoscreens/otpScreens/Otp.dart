import 'package:ecommerce/demoscreens/widgets/long_button.dart';
import 'package:ecommerce/utils/avatar.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/responsive.dart';
import '../CreatNewPassScreen/CreatNewPasswordScreen.dart';

class Otp extends StatefulWidget {
  Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();

  String otps = "";

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          "Verify Your OTP",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Container(
          color: thirdColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size?.hp(5),
              ),
              // Row(
              //   children: [
              //     BackArrow(),
              //   ],
              // ),
              Container(
                height: size?.hp(30),
                width: size?.wp(60),
                child: Image.asset(
                  otp,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: size?.hp(1),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter OTP",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "A 6 digit code has been sent to",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "8018xxxxxx",
                          textScaleFactor: 1.4,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: textColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size?.hp(5),
              ),
              OTPTextField(
                  controller: otpController,
                  length: 6,
                  width: getWidth(context) / 1.2,
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
                  fieldWidth: 40,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 10,
                  style: TextStyle(fontSize: 17),
                  onChanged: (value) {
                    otps = value;
                  },
                  onCompleted: (pin) {
                    otps = pin;
                    print("Completed: " + pin);
                  }),
              // OtpBox(),
              SizedBox(height: 25,),
              Text(
                "Resend Otp",
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                height: size?.hp(6),
              ),
              LongButton(
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreatNewPasswordScreen()));
                },
                text: 'Verify',
              ),


            ],
          ),
        ),
      ),
    );
  }
}
