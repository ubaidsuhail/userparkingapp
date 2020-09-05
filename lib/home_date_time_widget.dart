import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:p4u/lot_details_widget.dart';
// import 'package:p4u/BilalsCode/lot_details_Screen.dart';
import 'package:p4u/values.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:location/location.dart';
import 'package:intl/intl.dart';
//import 'package:geolocator/geolocator.dart';


import 'dart:convert';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:intl/intl.dart';


class HomeDateTimeWidget extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<HomeDateTimeWidget> {

  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;
  String apptDate = "";

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      switch (_radioValue2) {
        case 0:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      switch (_radioValue3) {
        case 0:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      switch (_radioValue4) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;

      switch (_radioValue5) {
        case 0:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
      }
    });
  }







  DateTime _selectedDate;
  //---------------------------
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
@override
  void initState() {
    // TODO: implement initState
  _resetSelectedDate();
    super.initState();
  }
  void _resetSelectedDate() {
    _selectedDate = DateTime.now();

  }

  List doctorDetails = [];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  @override
  Widget build(BuildContext context) {

    DateTime _dateTime = DateTime.now();
    String name = "";
    String email = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text("Profile Screen"),
        elevation: 0,
        // actions: [
        //   PopupMenuButton(
        //     // key: _menuKey,
        //       itemBuilder: (_) => <PopupMenuItem<String>>[
        //         new PopupMenuItem<String>(
        //             child: const Text('Doge'), value: 'Doge'),
        //         new PopupMenuItem<String>(
        //             child: const Text('Lion'), value: 'Lion'),
        //       ],
        //       onSelected: (_) {})
        // ],
      ),

      // backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
              Image(image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover,
              )
//       GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition:  CameraPosition(target: LatLng(24.8607, 67.0011), zoom: 10),
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
// // //          markers: {
// // //            newyork1Marker,newyork2Marker,newyork3Marker,gramercyMarker,bernardinMarker,blueMarker,
// // //          }
// //         markers: allMarkers.toSet(),
//       ),
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

          Container(
            color: Colors.blue[900].withOpacity(0.5),
            width: MediaQuery.of(context).size.width,
            height: 200.0,
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.14,
            child: GestureDetector(
              onTap: (){
                // showAlertDialog(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                height: 100.0,
                width:MediaQuery.of(context).size.width,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Arriving',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                height: 1.28571,
                              ),),
                            Text('Today, 16:20',style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.2,
                              height: 1.28571,
                            ),)
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: AppColors.primaryText
                          ),
                          // margin: EdgeInsets.only(left: 15, right: 18,top: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5.0),
                            child: Text(
                              "1  month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 253, 254, 255),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Leaving',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                height: 1.28571,
                              ),),
                            Text('June 20, 2020',style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.2,
                              height: 1.28571,
                            ),)
                          ],
                        ),
                      ],),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            '\$1/hr',
                            textScaleFactor: 0.7,
                            // style: new TextStyle(fontSize: 0.0),
                          ),
                          new Radio(
                            value: 1,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            '\$18/day',
                            textScaleFactor: 0.7,
                            // style: new TextStyle(fontSize: 0.0,),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            '\$100/wk',
                            textScaleFactor: 0.7,
                            // style: new TextStyle(fontSize: 0.0),
                          ),

                          new Radio(
                            value: 2,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            '\$300/mo',
                            textScaleFactor: 0.7,
                            // style: new TextStyle(fontSize: 0.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: GestureDetector(
              onTap: (){
                // showAlertDialog(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                height: 130.0,
                width:MediaQuery.of(context).size.width * 0.8,
                child:Center(
                  child: Container(
                    decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],),
                    width: 260.0,
                    height: 80.0,

                    child: Center(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(

                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(30.0),
                                  borderRadius: BorderRadius.only(topLeft:  Radius.circular(10)),
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/map.png'),
                                      fit: BoxFit.cover
                                  ),

                                  //
                                ),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(10)),
                                    color: Colors.blue,
                                  ),
                                  height: 20.0,
                                  width: 60.0,
                                  // color: Colors.blue,
                                  child: Center(
                                    child: Text(
                                      '\$ 1.50/hr',
                                      textScaleFactor: 0.6,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                              )
                            ],),

                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Senyan City Mall',
                                    textScaleFactor: 0.7,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                  Text(
                                    '4.6 - Parking Mall',
                                    textScaleFactor: 0.7,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image(image: AssetImage('assets/images/car.png'),width: 12.0,height: 12.0,),
                                      SizedBox(width: 5.0,),
                                      Text(
                                        '523 Spaces',
                                        textScaleFactor: 0.7,
                                      ),

                                      SizedBox(width: 10.0,),
                                      Icon(Icons.arrow_forward_ios,size: 10.0,),
                                      // SizedBox(width: 5.0,),
                                      Text(
                                        '200 m',
                                        textScaleFactor: 0.7,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => LotDetailsWidget()));
                    }
                    ,
                    child: Container(
                        height: MediaQuery.of(context).size.height *0.18,
                        width: MediaQuery.of(context).size.width,
                        color:Colors.white,child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CalendarTimeline(
                        initialDate: _selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now()
                            .add(Duration(days: 365)),
                        onDateSelected: (date) {
                          _selectedDate = date;
                          setState(() {
                            String _formattedate =
                            new DateFormat.yMMMd()
                                .format(_selectedDate);
                            apptDate = _formattedate;
                            print("Date is : " + apptDate);
                          });
                        },
                        leftMargin: 20,
                        monthColor: Colors.blue[900],
                        dayColor: Colors.teal[200],
                        dayNameColor: Colors.white,
                        activeDayColor: Colors.white,
                        activeBackgroundDayColor: Colors.blue,
                        dotsColor: Colors.white,

                        // selectableDayPredicate: (date) =>
                        //     date.day != 23,
                        locale: 'en',
                      ),
                    )),
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 1.0,
                  //   color:Colors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          color:Colors.white,child: hourMinute12HCustomStyle()),
                      // Container(
                      //     height: MediaQuery.of(context).size.height * 0.22,
                      //     width: 1.0,
                      //     color:Colors.blue),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.28,
                          color:Colors.white,child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                              Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => LotDetailsWidget()));
                                    },
                                    child: Text("Done",style: TextStyle(color: Colors.blue),)),
                              )),
                            ],
                          )),
                    ],
                  ),
                // SizedBox(height: 50.0,)
                ],
              ),
            ),
          ),


        ],),
    );
  }
  Widget hourMinute12HCustomStyle(){
    return new TimePickerSpinner(
      // itemWidth: 30.0,
      alignment: Alignment.topCenter,
time: DateTime.now(),
      // isShowSeconds: true,
      is24HourMode: false,
      normalTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.blue
      ),
      highlightedTextStyle: TextStyle(
          fontSize: 24,
          color: Colors.black
      ),
      spacing: 15,
      itemHeight: 50,
      isForce2Digits: true,
      minutesInterval: 1,
      onTimeChange: (time) {
        setState(() {
          // _dateTime = time;
        });
      },
    );
  }
}


