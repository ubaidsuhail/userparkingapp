/*
*  privacy_policy_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/register_widget.dart';
import 'package:p4u/values.dart';


class PrivacyPolicyWidget extends StatelessWidget {
  
  //void onIAgreeButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: -250,
                  top: -450,
                  right: -250,
                  bottom: MediaQuery.of(context).size.height * 0.6,
                  child: Image.asset(
                    "assets/images/bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
               Padding(
                 padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.13,left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05),
               child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Privacy Policy",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1,
                        ),
                      ),
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height*0.6,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBackground,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child:SingleChildScrollView(
                            child:Column(
                              children: <Widget>[
                                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.\n\nSed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\n\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\n\n",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 128, 128, 128),
                                      fontFamily: "SF Pro Text",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      letterSpacing: 0.175,
                                      height: 1.57143,
                                    )
                                ),
                              ],
                            ))
                    ),
                    Container(
                        width: 88,
                        height: 35,
                        //margin: EdgeInsets.only(right: 66,top:450),
                        child: FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                              print("I agree");
                            } ,
                            color: Color.fromARGB(255, 74, 144, 226),
                            shape: RoundedRectangleBorder(
                              borderRadius: Radii.k5pxRadius,
                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Text(
                                "I AGREE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )
                            )
                        )
                    )



                  ],

                ))

              ],
            ),
          ],
        )
      ),
    );
  }
}