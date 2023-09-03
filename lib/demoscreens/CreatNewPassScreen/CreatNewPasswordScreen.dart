import 'package:ecommerce/api/client.dart';
import 'package:ecommerce/demoscreens/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../widgets/long_button.dart';

class CreatNewPasswordScreen extends StatelessWidget {
  final String otp;
  final String mobile;
  CreatNewPasswordScreen({super.key, required this.otp, required this.mobile});

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPassowrdController =
      TextEditingController();

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
        child: SingleChildScrollView(
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
                    controller: newPasswordController,
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
                    controller: confirmPassowrdController,
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
                  action: () async {
                    if (newPasswordController.text ==
                        confirmPassowrdController.text) {
                      try {
                        final apiClient = ApiClient();
                        await apiClient.updatePassword(
                            mobile, otp, newPasswordController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } catch (e) {
                        if (e is BackendAPIError) {
                          final backendError = e as BackendAPIError;
                          final errorMessage = backendError.message;
                          print('Update password failed: $errorMessage');
                        } else {
                          print('An error occurred: $e');
                        }
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'New password and confirm password don\'t match.'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                  text: 'Confirm'),
            ],
          ),
        ),
      ),
    );
  }
}
