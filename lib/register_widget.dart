/*
*  register_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/login_widget.dart';
import 'package:p4u/privacy_policy.dart';
import 'package:p4u/privacy_policy_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/verift_account_widget.dart';
import 'package:flutter/gestures.dart';

class RegisterWidget extends StatefulWidget {
  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool switchVal = false;

//  void onSwitchValueChanged(BuildContext context) {
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                                  children: <Widget>[
                                    Text(
                                        "Sign Up",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.secondaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                          height: 1,
                                        )),
                                    Text(""),
                                    Text(""),

                                    SizedBox(
                                      height: MediaQuery.of(context).size.height*0.13,
                                    ),


                                Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  child:TextField(
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      hintStyle: TextStyle(fontSize: 15),
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
                                  ),
                                ),

                                SizedBox(height:20.0),

                                Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  child:TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
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
                                      hintText: "Email Address",
                                      hintStyle: TextStyle(fontSize: 15),
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
                                  ),
                                ),

                                SizedBox(height:18.0),

                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "I agree with the terms and conditions",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.secondaryText,
                                          fontFamily: "Lato",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),

                                  Switch.adaptive(
                                    value: switchVal,
                                    inactiveTrackColor: Colors.white,
                                    inactiveThumbColor: Color.fromARGB(255, 0, 128, 255),
                                    onChanged: (value) {
                                      if(value == true)
                                        {
                                         setState(() {
                                           switchVal = true;

                                         });
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                                        }
                                        else
                                          {
                                            setState(() {
                                              switchVal = false;
                                            });
                                          }
                                    },
                                    activeColor: Color.fromARGB(255, 0, 128, 255),
                                    activeTrackColor: Colors.white,
                                  ),

                                    ],
                                  ),


                                SizedBox(height:18.0),

                                Container(
                                  height: MediaQuery.of(context).size.height*0.08,
                                  width: MediaQuery.of(context).size.width*0.9,
                                  child: FlatButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => VeriftAccountWidget()));
                                      //Navigator.pop(context);
                                    },
                                    color: AppColors.primaryElement,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: Radii.k5pxRadius,
                                    ),
                                    textColor: Color.fromARGB(255, 20, 56, 171),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "SIGN UP",
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
                                    text: 'Already have an account? ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Login',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            print("Login");
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
                                            // Navigator.pop(context);
                                          },
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                      ),


                                    ],
                                  ),
                                ),

                                SizedBox(height:10.0),
                              ]
                          ),
//

                        ],
                      ),

                    ]
                )
            )
        ));
  }
}
