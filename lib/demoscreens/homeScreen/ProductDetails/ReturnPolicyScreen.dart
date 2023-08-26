import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';

class ReturnPolicyScreen extends StatelessWidget {
  const ReturnPolicyScreen({super.key});

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
          "Return Policy",
          style: TextStyle(
              color: titlecolor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      body:  SingleChildScrollView
        (
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose a document",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please upload a document for verification",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "GST Certificate",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: titlecolor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Goods and Service Tax Certificate",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.green.withOpacity(0.30)),
                                alignment: Alignment.topLeft,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: Colors.green),
                                          child: Center(
                                            child: Icon(
                                              Icons.electric_bolt_outlined,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Instant Verification",
                                          style: TextStyle(
                                              color: titlecolor,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 20,),
                      Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.black,
                                size: 25,
                              )
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Business Pan",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Issued by the Income Tax Department",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.green.withOpacity(0.30)),
                              alignment: Alignment.topLeft,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            color: Colors.green),
                                        child: Center(
                                          child: Icon(
                                            Icons.electric_bolt_outlined,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Instant Verification",
                                        style: TextStyle(
                                            color: titlecolor,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Shop and Establishment Licence",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Issued by State Government",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "FSSAI certificate",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "By Food Safety and Standards Authority of India",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Trade License",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Issued by Municipal Corporation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Weight & Measurement Certificate",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Provide by Inspector of Legal Metrology",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Current Account Cheque",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Make sure it has your company's name on it",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Udyam Registration Certificate",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Make sure it has your company's name on it",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Other Documents",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titlecolor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "More documents are accepted,tap to vie",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),
            Container(
              height: 1,
              color: grey2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Need Help?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Check our FAQs on Verification",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 20,),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ))
                  ],
                )
              ],),
            ),SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
