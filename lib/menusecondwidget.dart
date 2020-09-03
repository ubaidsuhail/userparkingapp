import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:p4u/profile_widget.dart';
import 'package:p4u/privacy_policy_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/mybookings_widget.dart';
import 'package:p4u/my_vehicles_widget.dart';
import 'package:p4u/lot_details_widget.dart';
import 'package:p4u/home_search_widget.dart';


class MenuSecondWidget extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuSecondWidget> {
  String value = "1";
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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

                        value ="1";
                        setState(() {
                          ShowScreen();
                        });

                       // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeSearchWidget()));
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

                        value ="2";
                        setState(() {
                          ShowScreen();
                        });

                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
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

                        value ="3";
                        setState(() {
                          ShowScreen();
                        });

                        //Navigator.push(context, MaterialPageRoute(builder: (context) => MyVehiclesWidget()));
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
                        value ="4";
                        setState(() {
                          ShowScreen();
                        });

                        //Navigator.push(context, MaterialPageRoute(builder: (context) => MYBookingsWidget()));
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
                        value = "5";
                        setState(() {
                          ShowScreen();
                        });

                       // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyWidget()));
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
      body: ShowScreen()
    );
  }

  Widget ShowScreen()
  {

 if(value == "1")
  {
  return HomeSearchWidget();
  }

  else if(value == "2")
    {
    return ProfileScreen();
    }

    else if(value == "3")
    {
    return MyVehiclesWidget();
    }

    else if(value == "4")
    {
      return MYBookingsWidget();
    }

    else if(value == "5")
    {
      return PrivacyPolicyWidget();
    }
  }
}
