import 'package:ecommerce/api/client.dart';
import 'package:ecommerce/api/models.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Screen? size;
  final visibility = true;

  late ApiClient apiClient;

  bool _isloading = false;

  @override
  void initState() {
    super.initState();
    apiClient = ApiClient();
    // print('initState called. apiClient initialized: ${apiClient != null}');
  }

  void _showSnackBar(String message) {
    String snackbarMessage;

    if (message.contains("The mobile has already been taken")) {
      snackbarMessage = "This mobile number is already taken.";
    }
    if (message.contains("The email has already been taken")) {
      snackbarMessage = "This email address is alreay taken";
    } else {
      snackbarMessage = message;
    }
    final snackBar = SnackBar(
      content: Text(snackbarMessage),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<bool> _handleSignup() async {
    final userData = {
      'first_name': _nameController.text,
      'last_name': 'test name',
      'mobile': _phoneController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
    };

    print('User data: $userData');

    if (_formKey.currentState!.validate()) {
      try {
        final user = await apiClient.createUser(userData);
        print('User created: ${user.name}');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavigation()));
      } catch (e) {
        if (e is BackendAPIError) {
          final errorMessage = e.message;

          print(errorMessage);
          // Show an error message to the user.
          _showSnackBar(errorMessage);
        } else {
          print('Error creating user: $e');
          // Handle other types of errors.
        }
      }
    }

    try {
      if (userData['first_name'] != null &&
          userData['last_name'] != null &&
          userData['mobile'] != null &&
          userData['email'] != null &&
          userData['password'] != null) {
        final user = await apiClient.createUser(userData);
        print('User created: ${user.name}');

        if (_formKey.currentState!.validate()) {}
      } else {
        print('Error: User data contains null values');
      }
    } catch (e) {
      if (e is BackendAPIError) {
        final errorMessage = e.message;

        print(errorMessage);
      } else {
        print('Error creating user: $e');
      }
    }
    return false;
  }

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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: titlecolor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            controller: _nameController,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              return null;
                            },
                            controller: _phoneController,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email Address';
                              }
                              return null;
                            },
                            controller: _emailController,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please choose a password';
                              }
                              return null;
                            },
                            controller: _passwordController,
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
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                LongButton(
                    action: () async {
                      await _handleSignup();

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => BottomNavigation()));
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
