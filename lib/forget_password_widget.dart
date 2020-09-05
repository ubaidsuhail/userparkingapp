/*
*  forget_password_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/values.dart';
import 'package:flutter/gestures.dart';
import 'package:p4u/register_widget.dart';

class ForgetPasswordWidget extends StatelessWidget {
  
//  void onDonTHaveAnAccounPressed(BuildContext context) {
//
//  }
  
//  void onResetPressed(BuildContext context) {
//
//  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:SingleChildScrollView(
        child:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 74, 144, 226),
            ),
            child: Stack(
                alignment: Alignment.center,
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

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Text(
                                "Reset Password",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  height: 1,
                                )),

                            SizedBox(
                              height: 12.0,
                            ),
                            Text(""),

                            Text(""),


                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.1,
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              child:TextField(
                                decoration: InputDecoration(
                                  hintText: "New Password",
                                  hintStyle: TextStyle(fontSize: 15),
                                  suffixIcon:IconButton(icon: Icon(Icons.visibility,color: Colors.grey,size:20.0), onPressed: null),
                                  //border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 18.0,bottom: 18.0,left: 15.0,right: 2.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white,width:1.0),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,

                                ),
                                style: TextStyle(
                                  //color: Color.fromARGB(255, 117, 123, 126),
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                                obscureText: true,
                              ),

                            ),

                            SizedBox(height:20.0),

                            Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              child:TextField(
                                decoration: InputDecoration(
                                  hintText: "Verify New Password",
                                  hintStyle: TextStyle(fontSize: 15),
                                  suffixIcon:IconButton(icon: Icon(Icons.visibility,color: Colors.grey,size:20.0), onPressed: null),
                                  //border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 18.0,bottom: 18.0,left: 15.0,right: 2.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white,width:1.0),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,

                                ),
                                style: TextStyle(
                                  //color: Color.fromARGB(255, 117, 123, 126),
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                                obscureText: true,
                              ),

                            ),

                          ]),
//
                      Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: AppColors.primaryElement,
                              shape: RoundedRectangleBorder(
                                borderRadius: Radii.k5pxRadius,
                              ),
                              textColor: Color.fromARGB(255, 20, 56, 171),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "RESET PASSWORD",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 20, 56, 171),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),


                          SizedBox(height:10.0),

                          RichText(
                            text: TextSpan(
                              text: 'Don’t have an account? ',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Signup',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("Signup");
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWidget()));
                                    },
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                ),


                              ],
                            ),
                          ),



                        ],
                      ),
                    ],
                  ),

                ]
            )
        )
    )
    );

}

}