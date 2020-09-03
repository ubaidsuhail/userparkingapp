/*
*  mybookings_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/details_cash_widget.dart';
import 'package:p4u/details_ccwidget.dart';
import 'package:p4u/values.dart';
import 'package:auto_size_text/auto_size_text.dart';


class MYBookingsWidget extends StatelessWidget {
  
  void onArrowLeftTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsCCWidget()));
  
  void onArrowLeftPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsCashWidget()));
  
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
        body: Container(
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
                            "My Bookings",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              height: 1,
                            )),


                        SizedBox(
                          height: 15.0,
                        ),

                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left:15.0,right: 15.0),
                              child: Text(
                                "Today",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            )
                        ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsCashWidget()));

                            },
                            child:Container(
                                height: MediaQuery.of(context).size.height*0.10,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(left:15.0,right: 15.0,top:10.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(77, 107, 127, 153),
                                      offset: Offset(0, 0),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left:20.0,right:20.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            width:MediaQuery.of(context).size.width*0.5,
                                            child:AutoSizeText(
                                              'Senayan City Mall',
                                              style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              minFontSize: 14.0,
                                            ),
                                          ),

                                          Container(
                                              width:MediaQuery.of(context).size.width*0.3,
                                              child:AutoSizeText(
                                                '\$1.50',
                                                style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                minFontSize: 14.0,
                                                textAlign: TextAlign.end,
                                              )),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left:20.0,right:20.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                              width:MediaQuery.of(context).size.width*0.5,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [

                                                    WidgetSpan(
                                                        child:  Container(
                                                          margin: EdgeInsets.only(bottom: 3.0),
                                                          width: 15.0,
                                                          height: 15.0,
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Colors.red[700]
                                                          ),
                                                        )
                                                    ),

                                                    TextSpan(
                                                      text: '  ',
                                                    ),
                                                    WidgetSpan(
                                                      child: AutoSizeText(
                                                        'Cash',
                                                        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                        minFontSize: 13.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),

                                          Container(
                                              width:MediaQuery.of(context).size.width*0.3,
                                              child:AutoSizeText(
                                                'Regular Space',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                minFontSize: 13.0,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                            ),

                          ),


                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left:15.0,right: 15.0,top: 50.0),
                              child: Text(
                                "History",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            )
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsCCWidget()));
                            print("payment successfull");
                          },
                          child:Container(
                              height: MediaQuery.of(context).size.height*0.10,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(left:15.0,right: 15.0,top:10.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(77, 107, 127, 153),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left:20.0,right:20.0),
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                            width:MediaQuery.of(context).size.width*0.5,
                                            child:AutoSizeText(
                                              'Saticara Mall',
                                              style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              minFontSize: 14.0,
                                            )),

                                        Container(
                                            width:MediaQuery.of(context).size.width*0.3,
                                            child:AutoSizeText(
                                              '\$300.00',
                                              style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              minFontSize: 14.0,
                                              textAlign: TextAlign.end,
                                            )),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left:20.0,right:20.0),
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                            width:MediaQuery.of(context).size.width*0.5,
                                            child:Text.rich(
                                              TextSpan(
                                                children: [

                                                  WidgetSpan(
                                                      child:  Container(
                                                        margin: EdgeInsets.only(bottom: 3.0),
                                                        width: 15.0,
                                                        height: 15.0,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: Colors.green[400]
                                                        ),
                                                      )
                                                  ),

                                                  TextSpan(
                                                    text: '  ',
                                                  ),
                                                  WidgetSpan(
                                                    child: AutoSizeText(
                                                      'Payment Successful',
                                                      style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      minFontSize: 13.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),

                                        Container(
                                            width:MediaQuery.of(context).size.width*0.3,
                                            child:AutoSizeText(
                                              'EV Space',
                                              style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              minFontSize: 13.0,
                                              textAlign: TextAlign.end,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              )

                          ),
                        ),

                      ],
                    )),



                  ]

              )



      )

    );
  }
}