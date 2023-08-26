import 'package:flutter/material.dart';
import '../../utils/colors/colors.dart';



class WishListScreenPage extends StatelessWidget {
  const WishListScreenPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 30,
          width: 25,
          child: Image.asset("assets/LogoAccents.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.shopping_cart,
              color: grey2,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 280,
             crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.50, color: grey2),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Stack(
                  children: [
                     Container(
                        height: 190,
                        width: 200,
                        child: Image.asset("assets/laptop2.jpg")),
                    Positioned(
                      right: -15,
                      top: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.20),
                              borderRadius:
                              BorderRadius.circular(50),
                             ),
                          child: Center(
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                 
                ),

                Text(
                  "Not Deliverable",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xffBC688F),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    "Dell Laptop (8 GB RAM) Graphic Card",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xffC4C4C4),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(children: [
                    RichText(
                      text: new TextSpan(
                        children: <TextSpan>[
                          new TextSpan(
                            text: '₹25,999',
                            style: new TextStyle(
                              color: Color(0xffC4C4C4),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "₹22,999",
                      style: TextStyle(
                          color: titlecolor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "60% Off",
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],),
                )

              ],
            ),
          );
        },
      ),
    );
  }
}
