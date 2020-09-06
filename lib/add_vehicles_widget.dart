/*
*  add_vehicles_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/my_vehicles_widget.dart';
import 'package:p4u/values.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AddVehiclesWidget extends StatelessWidget {
  
  //void onAddVehiclePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => MyVehiclesWidget()));
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                              "My Vehicles",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                              )),


                          SizedBox(
                            height: 20.0,
                          ),

                    Container(
                        height: MediaQuery.of(context).size.height*0.10,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left:15.0,right: 15.0,top:15.0),
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
                              child:Container(
                                width:MediaQuery.of(context).size.width*0.8,
                                child:AutoSizeText(
                                  'Toyota Camry',
                                  style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  minFontSize: 14.0,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left:20.0,right:20.0),
                              child: Container(
                                  width:MediaQuery.of(context).size.width*0.8,
                                  child: AutoSizeText(
                                    'LicencePlate'+':\t  '+'ABC-1234',

                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 68, 75, 81),fontFamily: "SF Pro Text",fontWeight: FontWeight.w400,),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    minFontSize: 13.0,
                                  )),
                            ),
                          ],
                        )

                    ),




                      Container(
                        height: MediaQuery.of(context).size.height*0.5,
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
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),

                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0,),
                            Container(
                              margin:EdgeInsets.only(left: 12.0,right: 12.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  hintText: 'Make:\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHonda',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 20.0),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),

                            Container(
                              margin:EdgeInsets.only(left: 12.0,right: 12.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  hintText: 'Model:\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHR-V',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  contentPadding: EdgeInsets.only(left: 20.0),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),

                            Container(
                              margin:EdgeInsets.only(left: 12.0,right: 12.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  hintText: 'License Plate:\t\t\t\t\t\tABC-4321',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  contentPadding: EdgeInsets.only(left: 20.0),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),

Spacer(),

                            Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: MediaQuery.of(context).size.height*0.08,
                                  child: FlatButton(
                                      onPressed:(){
                                        Navigator.pop(context);
                                      } ,
                                      color: AppColors.accentElement,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: Radii.k5pxRadius,
                                      ),
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        "ADD VEHICLE",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.secondaryText,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      )
                                  )
                              ),

                            SizedBox(
                              height: 40.0,
                            )

                          ],
                        ),

                      ),




                              ],
                      )
                  ),



                ]

            )



        )

    ));

  }
}