/*
*  login_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/forget_password_widget.dart';
import 'package:p4u/home_widget.dart';
import 'package:p4u/register_widget.dart';
import 'package:p4u/values.dart';
import 'package:flutter/gestures.dart';
import 'package:p4u/menu_widget.dart';
import 'package:p4u/menusecondwidget.dart';
import 'package:p4u/forget_password_widget.dart';
class LoginWidget extends StatelessWidget {
  
  //void onDonTHaveAnAccounPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWidget()));
  
  void onForgotPasswordResPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordWidget()));
  
  //void onLoginPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
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
                             "Login",
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
                         Text(
                           "Welcome Back",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: AppColors.secondaryText,
                             fontFamily: "Roboto",
                             fontWeight: FontWeight.w400,
                             fontSize: 22,
                           )),

                         Text(
                           "Your parking spot awaits you",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: AppColors.secondaryText,
                             fontFamily: "Roboto",
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             height: 1.5,
                           ),
                         ),


                         SizedBox(
                           height: MediaQuery.of(context).size.height*0.05,
                         ),

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
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.9,
              child: FlatButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenuSecondWidget()));
                },
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k5pxRadius,
                ),
                textColor: Color.fromARGB(255, 20, 56, 171),
                padding: EdgeInsets.all(0),
                child: Text(
                  "LOGIN",
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
                          ]),
//
            Column(
              children: <Widget>[
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

                 SizedBox(height:10.0),

                RichText(
                  text: TextSpan(
                    text: 'Forgot Password? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Reset Password',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgetPasswordWidget()));
                          },
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ],
        ),

   ]
        )
      )
    ));
  }
}