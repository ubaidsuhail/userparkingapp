/*
*  review_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/menu_widget.dart';
import 'package:p4u/values.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ReviewWidget extends StatelessWidget {

  //void onRatePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            PopupMenuButton(
              // key: _menuKey,
                itemBuilder: (_) => <PopupMenuItem<String>>[
                  new PopupMenuItem<String>(
                      child: const Text('Doge'), value: 'Doge'),
                  new PopupMenuItem<String>(
                      child: const Text('Lion'), value: 'Lion'),
                ],
                onSelected: (_) {})
          ],
        ),
        backgroundColor:  Color.fromARGB(255, 74, 144, 226),
        body:SingleChildScrollView(
            child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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


                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.14),
                          child:Column(
                            children: <Widget>[
                              Text(
                                "RATE YOUR EXPERIENCE",

                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  height: 2,
                                ),),

                              SizedBox(
                                height: 5.0,
                              ),

                              Text(
                                "Satacira Mall",

                                style: TextStyle(
                                  color: Color.fromARGB(255, 251, 252, 255),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),),

                              SizedBox(
                                height: 20.0,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/star.png",
                                  ),

                                  SizedBox(width:4.0),

                                  Image.asset(
                                    "assets/images/star.png",
                                  ),

                                  SizedBox(width:4.0),

                                  Image.asset(
                                    "assets/images/star.png",
                                  ),

                                  SizedBox(width:4.0),

                                  Image.asset(
                                    "assets/images/star.png",
                                  ),

                                  SizedBox(width:4.0),

                                  Image.asset(
                                    "assets/images/star.png",
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 25.0,
                              ),

                              Text(
                                  "Tap a star to rate",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23,

                                  )
                              ),

                              SizedBox(
                                height: 18.0,
                              ),


                              Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                                    child:Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Leave a comment",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 75, 74, 75),
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              height: 2,
                                            ),
                                          ),
                                        ),

                                        TextField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(top: 18.0,bottom: 18.0,left: 6.0,right: 2.0),
                                            border: InputBorder.none,
                                            fillColor: Color.fromARGB(255, 232, 230, 230),
                                            filled: true,

                                          ),
                                          maxLines: 7,
                                        ),

                                        SizedBox(
                                          height: 12.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),

                              Spacer(),

                              Container(
                                height: MediaQuery.of(context).size.height*0.08,
                                width: MediaQuery.of(context).size.width*0.9,
                                child: FlatButton(
                                  onPressed: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                                  },
                                  color: AppColors.accentElement,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  textColor: Color.fromARGB(255, 255, 255, 255),
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "RATE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),



                              SizedBox(
                                  height:15.0
                              ),



                            ],
                          )),



                    ]

                )



            )

        ));
  }
}