/*
*  verift_account_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/login_widget.dart';
import 'package:p4u/values.dart';
import 'package:flutter/gestures.dart';


class VeriftAccountWidget extends StatelessWidget {
  
  void onDidnTGetItSendPressed(BuildContext context) {
  
  }
  
  //void onDonePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
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
              )
        ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
              children: <Widget>[
                Text(
                "Verify Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                color: AppColors.secondaryText,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                fontSize: 45,
                height: 1,
                )),

                SizedBox(
                height: 12.0,
                ),
               Padding(
                 padding: EdgeInsets.only(left:15.0,right: 15.0),
                 child:Text(
                     "A verification code has been sent via email.\nPlease check your inbox and enter the code below",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: AppColors.secondaryText,
                       fontFamily: "Roboto",
                       fontWeight: FontWeight.w400,
                       fontSize: 15,
                       height: 1.5
                     )),
               ),


                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  child:TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Code",
                      suffixIcon:IconButton(icon: Icon(Icons.visibility,color: Colors.grey,size:20.0), onPressed: null),
                      //border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 18.0,bottom: 18.0,left: 6.0,right: 2.0),
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
                    keyboardType: TextInputType.number,
                  ),

                ),

                SizedBox(height:30.0),
                RichText(
                  text: TextSpan(
                    text: "\t\t\tDidn't? Get it ? ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Send Again',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Send again");
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
                            Navigator.pop(context);
                          },
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                      ),


                    ],
                  ),
                ),

              ],
              ),

              Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
                      //Navigator.pop(context);
                    },
                    color: AppColors.primaryElement,
                    shape: RoundedRectangleBorder(
                      borderRadius: Radii.k5pxRadius,
                    ),
                    textColor: Color.fromARGB(255, 20, 56, 171),
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "DONE",
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
              ],
              ),


              ],
            ),

          ],
        ),
      ),
    ));
  }
}