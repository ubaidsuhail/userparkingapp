/*
*  booking_widget.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/pay_ccwidget.dart';
import 'package:p4u/values.dart';


class BookingWidget extends StatelessWidget {
  
  void onPAYCREDITPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => PayCCWidget()));
  
  void onPAYCASHPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 144, 226),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -366,
              top: -620,
              right: -356,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 37,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 298,
                      height: 20,
                      margin: EdgeInsets.only(right: 23),
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
                  Container(
                    height: 570,
                    margin: EdgeInsets.only(top: 13),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 82,
              right: 0,
              bottom: 38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 112,
                      height: 38,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Booking",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                height: 1.25,
                              ),
                            ),
                          ),
                          Spacer(),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "No. EP-324992429",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 318,
                      height: 41,
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Container(
                            width: 82,
                            height: 38,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 12, right: 13),
                                  child: Text(
                                    "Arriving",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      letterSpacing: 0.2,
                                      height: 1.28571,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 18,
                                  margin: EdgeInsets.only(top: 1),
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Today, 16:20",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 19,
                            margin: EdgeInsets.only(left: 29),
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(31, 10, 36, 99),
                                  offset: Offset(0, 4),
                                  blurRadius: 16,
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(9.5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 14,
                                  margin: EdgeInsets.only(left: 15, right: 18),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "1  month",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 253, 254, 255),
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
                          Spacer(),
                          Container(
                            width: 100,
                            height: 41,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 22),
                                  child: Text(
                                    "Leaving",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      letterSpacing: 0.2,
                                      height: 1.28571,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 18,
                                  margin: EdgeInsets.only(left: 1, right: 1, bottom: 1),
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "June 20, 2020",
                                        contentPadding: EdgeInsets.all(0),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 195,
                      height: 50,
                      margin: EdgeInsets.only(left: 21, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 156,
                            height: 22,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Senayan City Mall",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 114,
                            height: 20,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Regular Space",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 19, 111, 209),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 247,
                      height: 130,
                      margin: EdgeInsets.only(left: 21, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                "ADDRESS",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 66,
                            margin: EdgeInsets.only(top: 13),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Jl. Asia Afrika No.Lot. 19, RT.1/RW.3, Gelora, Tanah Abang, Kota Jakarta Pusat.",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 110,
                              height: 22,
                              margin: EdgeInsets.only(bottom: 3),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Open • 24 Hours",
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 36, 99),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 195,
                      height: 30,
                      margin: EdgeInsets.only(left: 21, top: 20),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(21, 0, 0, 0),
                            offset: Offset(0, 8),
                            blurRadius: 16,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 13, right: 51),
                              child: Opacity(
                                opacity: 0.3,
                                child: Text(
                                  "Select Vehicle",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                    height: 1.25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 14,
                            margin: EdgeInsets.only(right: 16),
                            child: Image.asset(
                              "assets/images/group-4077-4.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 34,
                    margin: EdgeInsets.only(bottom: 14),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Opacity(
                                opacity: 0.1,
                                child: Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Spacer(),
                              Opacity(
                                opacity: 0.1,
                                child: Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                  ),
                                  child: Container(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 48,
                          right: 41,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Price",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                    height: 1.25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 72,
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "\$ 300.00",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    autocorrect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 51,
                    margin: EdgeInsets.only(left: 44, right: 36),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 111,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 1),
                            child: FlatButton(
                              onPressed: () => this.onPAYCASHPressed(context),
                              color: AppColors.accentElement,
                              shape: RoundedRectangleBorder(
                                borderRadius: Radii.k5pxRadius,
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "CASH",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 111,
                            height: 50,
                            child: FlatButton(
                              onPressed: () => this.onPAYCREDITPressed(context),
                              color: AppColors.accentElement,
                              shape: RoundedRectangleBorder(
                                borderRadius: Radii.k5pxRadius,
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "CREDIT CARD",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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