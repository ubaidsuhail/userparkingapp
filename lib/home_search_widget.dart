import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:p4u/home_date_time_widget.dart';
import 'package:p4u/home_search_widget.dart';
import 'package:p4u/values.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
//import 'package:geolocator/geolocator.dart';

class HomeSearchWidget extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<HomeSearchWidget> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
              Image(image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover,
              )
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
          top: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * 0.52,
            child: GestureDetector(
            onTap: (){
            showAlertDialog(context);
            },
            child:
          Column(
            children: [
              Container (
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),

                width: MediaQuery.of(context).size.width * 0.4,
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.cyan)
                        ),
                        height: 30.0,
                        width: 30.0,
                        child: Center(child: Text('M'),)
                      ),
                      SizedBox(width: 20.0,),
                      Text('\$1.00/h',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              Container(
                height: 25.0,
                width: 2.0,
                color: Colors.black,
              )
            ],
          ),)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              right: MediaQuery.of(context).size.width * 0.52,
              child: GestureDetector(
                onTap: (){
                  showAlertDialog(context);
                },
                child:
                Column(
                  children: [
                    Container (
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),

                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange)
                                ),
                                height: 30.0,
                                width: 30.0,
                                child: Center(child: Text('S',style: TextStyle(fontWeight: FontWeight.bold),),)
                            ),
                            SizedBox(width: 20.0,),
                            Text('\$1.00/h',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 25.0,
                      width: 2.0,
                      color: Colors.black,
                    )
                  ],
                ),)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              left: MediaQuery.of(context).size.width * 0.65,
              child: GestureDetector(
                onTap: (){
                  showAlertDialog(context);
                },
                child:
                Column(
                  children: [
                    Container (
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),

                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.orange)
                                ),
                                height: 30.0,
                                width: 30.0,
                                child: Center(child: Text('S',style: TextStyle(fontWeight: FontWeight.bold),),)
                            ),
                            SizedBox(width: 20.0,),
                            Text('\$1.00/h',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 25.0,
                      width: 2.0,
                      color: Colors.black,
                    )
                  ],
                ),)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: MediaQuery.of(context).size.width * 0.32,
              child: GestureDetector(
                onTap: (){
                  // showAlertDialog(context);
                },
                child:
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/user-pulse.png'),width: 40.0,),
                    Container(
                      height: 5.0,
                      width: 5.0,
                      color: Colors.white,
                    ),
                    Container (
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),

                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 25.0,
                      child: Center(child: Text('You are here' ,style: TextStyle(fontWeight: FontWeight.bold),))
                    ),

                  ],
                ),)),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.14,
            child: GestureDetector(
              onTap: (){

                showAlertDialog(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                  height: 50.0,
                  width:MediaQuery.of(context).size.width* 0.78,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 15.0,),
                        Text('Search')
                      ],
                    ),
                  )
              ),
            ),
          ),

        ],
    );

  }
}

showAlertDialog(BuildContext context) {



  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Material(
          type: MaterialType.transparency,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container( // A simplified version of dialog.
                  // alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.55,

                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 200.0,
                                child: Text('Search Results',textScaleFactor: 1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: AppColors.primaryText),)),
                            GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Image(image: AssetImage('assets/images/oval-6-2.png'),))
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0,),

                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDateTimeWidget()));
                        },
                        child: Container(
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],),
                          width: 260.0,

                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(

                                    height: MediaQuery.of(context).size.height * 0.08,
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
                      SizedBox(height: 10.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDateTimeWidget()));
                        },
                        child: Container(
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],),
                          width: 260.0,

                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(

                                    height: MediaQuery.of(context).size.height * 0.08,
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
                      SizedBox(height: 10.0,),

                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDateTimeWidget()));
                        },
                        child: Container(
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],),
                          width: 260.0,

                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(

                                    height: MediaQuery.of(context).size.height * 0.08,
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
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryText,
                            ),

                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryText,
                            ),

                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryText,
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),


            ],
          ));
    },
  );
}