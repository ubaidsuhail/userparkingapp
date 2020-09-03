import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:p4u/profile_widget.dart';
import 'package:p4u/privacy_policy_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/mybookings_widget.dart';
import 'package:p4u/my_vehicles_widget.dart';
import 'package:p4u/lot_details_widget.dart';
import 'package:p4u/home_search_widget.dart';


class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Drawer Screen"),
        elevation: 0,
      ),
      drawer:  ClipRRect(
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(45), bottomRight: Radius.circular(45)),
        child: Drawer(
          child: Container(
            color: Color.fromARGB(255, 19, 52, 91),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DrawerHeader(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          height:100.0,
                          // margin: EdgeInsets.only(left: 35),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: ClipOval(
                            child:Image.asset(
                              "assets/images/avatar.png",
                              fit: BoxFit.fill,
                            ),
                          )
                        ),

                      ],
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSearchWidget()));
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => LotDetailsWidget()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/home.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "HOME",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/profile.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "PROFILE",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15.0,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyVehiclesWidget()));
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/map-pin.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "MY VEHICLES",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MYBookingsWidget()));
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/clipboard.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "MY BOOKINGS",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/policy.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "PRIVACY POLICY",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/log-out.png",),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "LOGOUT",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,)
              ],
            ),
          ),
        )),
      backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[

            Positioned(
              left: -250,
              top: -450,
              right: -250,
              bottom: MediaQuery.of(context).size.height * 0.6,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
//                      scale: 1,
              ),
            ),

          ],),
      ),
    );
  }
}
