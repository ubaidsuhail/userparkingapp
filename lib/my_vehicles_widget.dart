/*
*  my_vehicles_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/add_vehicles_widget.dart';
import 'package:p4u/values.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:p4u/add_vehicles_widget.dart';

class MyVehiclesWidget extends StatelessWidget {
  
  void onAddIconPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AddVehiclesWidget()));
  
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
                              "My Vehicles",

                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                              )),

                        SizedBox(
                          height: 20.0,
                        ),




                        Expanded(
                            child:ListView.builder(
                                itemCount: 1,
                                padding: EdgeInsets.only(top: 0.0),
                                itemBuilder: (BuildContext context , int index){
                                  return Container(
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

                                  );
                                }

                            )
                        ),


                       SizedBox(
                          height: 40.0,
                        ),


                       GestureDetector(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>AddVehiclesWidget()));
                         },
                         child:Container(
                           width: 70.0,
                           height: 70.0,

                           decoration: BoxDecoration(
                             shape: BoxShape.rectangle,
                             image:DecorationImage(
                                 image: AssetImage("assets/images/ellipse-4.png")
                             ),
                           ),
                           child: Center(
                             child: Image(
                               image: AssetImage('assets/images/add-icon.png'),
                             ),
                           ),
                         ),
                       ),


                          SizedBox(
                            height: 40.0,
                          ),







                      ],
                      )),



                ]

            )



        )

    );
  }
}