/*
*  home_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:p4u/values.dart';


class HomeWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GoogleMap(
                onMapCreated: (controller) {
                
                },
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: -21,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 157,
                    margin: EdgeInsets.only(right: 21),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBackground,
                    ),
                    child: Container(),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 344,
                      height: 350,
                      margin: EdgeInsets.only(top: 88),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 140,
                            height: 54,
                            margin: EdgeInsets.only(right: 38),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  left: -1,
                                  top: -1,
                                  right: -1,
                                  bottom: 0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 2,
                                          height: 19,
                                          decoration: BoxDecoration(
                                            color: AppColors.secondaryElement,
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          height: 41,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(62, 10, 36, 99),
                                                offset: Offset(0, 1),
                                                blurRadius: 2,
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "assets/images/container-6.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 5,
                                        top: 5,
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 249, 251, 255),
                                            borderRadius: BorderRadius.all(Radius.circular(14)),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 5,
                                        top: 5,
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Color.fromARGB(255, 1, 226, 179),
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(14)),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 13,
                                        top: 11,
                                        child: Text(
                                          "M",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 1.4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 11,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "\$1.00/h",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    autocorrect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 140,
                              height: 54,
                              margin: EdgeInsets.only(top: 116),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                    left: -1,
                                    top: -1,
                                    right: -1,
                                    bottom: 0,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: 2,
                                            height: 19,
                                            decoration: BoxDecoration(
                                              color: AppColors.secondaryElement,
                                            ),
                                            child: Container(),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          right: 0,
                                          child: Container(
                                            height: 41,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(62, 10, 36, 99),
                                                  offset: Offset(0, 1),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              "assets/images/container-6.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 5,
                                          top: 5,
                                          child: Container(
                                            width: 28,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 249, 251, 255),
                                              borderRadius: BorderRadius.all(Radius.circular(14)),
                                            ),
                                            child: Container(),
                                          ),
                                        ),
                                        Positioned(
                                          left: 14,
                                          top: 12,
                                          child: Container(
                                            width: 14,
                                            height: 14,
                                            decoration: BoxDecoration(
                                              border: Border.fromBorderSide(Borders.secondaryBorder),
                                              borderRadius: BorderRadius.all(Radius.circular(7)),
                                            ),
                                            child: Container(),
                                          ),
                                        ),
                                        Positioned(
                                          left: 14,
                                          top: 11,
                                          child: Text(
                                            "S",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              letterSpacing: 1.4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 11,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "\$ 1.00/h",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 140,
                            height: 54,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  left: -1,
                                  top: -1,
                                  right: -1,
                                  bottom: 0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 2,
                                          height: 19,
                                          decoration: BoxDecoration(
                                            color: AppColors.secondaryElement,
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          height: 41,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(62, 10, 36, 99),
                                                offset: Offset(0, 1),
                                                blurRadius: 2,
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "assets/images/container-2.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 5,
                                        top: 5,
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 249, 251, 255),
                                            borderRadius: BorderRadius.all(Radius.circular(14)),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 11,
                                        top: 11,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          decoration: BoxDecoration(
                                            border: Border.fromBorderSide(Borders.secondaryBorder),
                                            borderRadius: BorderRadius.all(Radius.circular(7)),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 14,
                                        top: 11,
                                        child: Text(
                                          "S",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 1.4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 11,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "\$ 1.00/h",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    autocorrect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 107,
              top: 268,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    left: 16,
                    top: 0,
                    right: 16,
                    child: Image.asset(
                      "assets/images/user-pulse.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: -1,
                          right: -1,
                          child: Container(
                            height: 25,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(21, 0, 0, 0),
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/images/container.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          right: 3,
                          child: Text(
                            "You are here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -327,
              top: -621,
              right: -343,
              child: Image.asset(
                "assets/images/bg-3.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 39,
              right: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 298,
                      height: 20,
                      child: Row(
                        children: [
                          Container(
                            width: 10,
                            height: 16,
                            child: Image.asset(
                              "assets/images/back-button.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 4,
                            height: 20,
                            child: Image.asset(
                              "assets/images/menu-button.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 311,
                      height: 44,
                      margin: EdgeInsets.only(top: 21),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(21, 0, 0, 0),
                            offset: Offset(0, 8),
                            blurRadius: 16,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Container(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}