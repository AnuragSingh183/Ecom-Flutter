import 'package:flutter/material.dart';

import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../otpScreens/Otp.dart';
import '../widgets/long_button.dart';
import '../../api/client.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController mobileNumberController = TextEditingController();

  Screen? size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      backgroundColor: thirdColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
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
                "Please Enter Your Mobile Number To",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Text(
                "Receive A Verification Code",
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
                    "Mobile Number",
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
                    controller: mobileNumberController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person_outline,
                          size: 21,
                          color: Colors.blue,
                        ),
                        hintText: 'Enter Your Mobile Number'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Try Another Way",
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
                  action: () async {
                    if (mobileNumberController.text.isNotEmpty) {
                      try {
                        final apiClient = ApiClient();
                        await apiClient.resetPassword(
                          mobileNumberController.text,
                        );

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Otp(
                        //               mobile: mobileNumberController.text,
                        //             )));

                        // final mobileNumber = mobileNumberController.text;

                        if (mobileNumberController.text != null &&
                            mobileNumberController.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Otp(mobile: mobileNumberController.text),
                            ),
                          );
                        } else {
                          // Show a message to the user or perform some error handling
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Invalid Mobile Number"),
                                content:
                                    Text("Please enter a valid mobile number."),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      } catch (e) {
                        if (e is BackendAPIError) {
                          final backendError = e as BackendAPIError;
                          final errorMessage = backendError.message;
                          print('Reset password failed: $errorMessage');
                        } else {
                          print('An error occurred: $e');
                        }
                      }
                    }
                  },
                  text: 'Send'),
            ],
          ),
        ),
      ),
    );
  }
}
