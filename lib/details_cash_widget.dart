import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
// import 'package:p4u/BilalsCode/lot_details_Screen.dart';
import 'package:p4u/review_widget.dart';
import 'package:p4u/values.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:location/location.dart';
//import 'package:geolocator/geolocator.dart';

class DetailsCashWidget extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<DetailsCashWidget> {

  //---------------------------

  @override
  Widget build(BuildContext context) {

    DateTime _dateTime = DateTime.now();
    String name = "";
    String email = "";
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text("Profile Screen"),
        elevation: 0,
      ),

      // backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 1.1,
                ),
            Positioned(
              left: -450,
              top: -450,
              right: -450,
              bottom: MediaQuery.of(context).size.height * 0.65,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.contain,
//                      scale: 1,
              ),
            ),

            // Positioned(
            //   top: 100.0,
            //   child: Container(
            //     color: Colors.yellow,
            //     height: 200.0,
            //     width: MediaQuery.of(context).size.width,
            //   ),
            // )

            Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: Container(
                  color: Colors.transparent,
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [

                      Positioned(
                        top: 18.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          width: 350.0,
                          height: 170.0,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20.0,),
                              Text("Booking Complete",style: TextStyle(color: AppColors.primaryText,fontWeight: FontWeight.bold),),
                              Text("No. EP-324992429"),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Space"),
                                    Text("Regular"),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Price"),
                                    Text("\$300"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                          top: 0.0,
                          child: Image(image: AssetImage("assets/images/indicator-2.png"),)),
                      Positioned(
                        top: 12.0,
                          right: 28.0,
                          child: Container(
                            height: 50.0,
                              decoration: BoxDecoration(color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image(image: AssetImage("assets/images/icon---close-2.png"),),
                              ))),
                    ],
                  ),
                )
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                height: 480.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width *0.92,
                      child: Image(image: AssetImage('assets/images/3.0x/container-17.png'),
                        // fit: BoxFit.contain

                      ),
                    ),

                    Positioned(
                      top: MediaQuery.of(context).size.height *0.05,
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/3.0x/qr-code-18.png'),
                            width: MediaQuery.of(context).size.width *0.5,
                            // fit: BoxFit.contain
                          ),
                          Text('Scan Barcode here',style: TextStyle(
                              color: Colors.grey[300]
                          ),),

                          SizedBox(height: 20.0,),
                          Text("- - - - - - - - - - - - - - - - - - - - - ",textScaleFactor: 2,),
                          SizedBox(height: 5.0,),
                          Text('Senayan City Mall',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: Colors.blue[900]
                            ),),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 25.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewWidget()));

                              },
                              child: Text(
                                "RATE & REVIEW",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: 0.2,
                                  height: 1.57143,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )




          ],),
      ),
    );
  }
  Widget hourMinute12HCustomStyle(){
    return new TimePickerSpinner(

      isShowSeconds: true,
      is24HourMode: false,
      normalTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.deepOrange
      ),
      highlightedTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.black
      ),
      spacing: 25,
      itemHeight: 80,
      isForce2Digits: true,
      minutesInterval: 15,
      onTimeChange: (time) {
        setState(() {
          // _dateTime = time;
        });
      },
    );
  }
}


