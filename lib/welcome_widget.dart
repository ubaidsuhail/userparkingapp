import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p4u/welcome_widget_animation1.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:p4u/login_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/welcome_widget_animation1.dart';

class WelcomeWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<WelcomeWidget> {
  AnimationController logoImageAnimationController;

  @override
  void initState() {

    super.initState();
//    this.logoImageAnimationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
  }

  @override
  void dispose() {

    super.dispose();
    this.logoImageAnimationController.dispose();
  }

  void onButtonPressed(BuildContext context) {

  }

  void startAnimationOne() => this.logoImageAnimationController.forward();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Column(
//
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Padding(
                padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*0.15),
                child:Container(
                  //color: Colors.red,
                  child:Image.asset(
                    "assets/images/Icon1024.png",width: 140.0,height: 140.0,
                    fit: BoxFit.cover,
                  ),
                )
              ),
//                Container(
//                  decoration: BoxDecoration(
//                    color: AppColors.primaryBackground,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Color.fromARGB(51, 0, 0, 0),
//                        offset: Offset(0, 20),
//                        blurRadius: 40,
//                      ),
//                    ],
//                    borderRadius: BorderRadius.all(Radius.circular(100)),
//                  ),
////                width: 90,
////                height: 116,
//                  child: Padding(
//                    padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical: 30.0),
//                    child: Image.asset(
//                      "assets/images/logo-2.png",
//                      fit: BoxFit.none,
//                    ),
//                  ),
//                ),

//              Spacer(),
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 58),
                    child: Text(
                      "PARKING 4 U",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    child: Text(
                      "YOUR WHEELS BEST FRIEND",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],),



                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginWidget()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
//                  boxShadow: [
//                    BoxShadow(
//                      color: Color.fromARGB(51, 0, 0, 0),
//                      offset: Offset(0, 20),
//                      blurRadius: 40,
//                    ),
//                  ],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    width: MediaQuery.of(context).size.width *0.9,
                    height: 50.0,

                    child: Center(child: Text(
                        "Let's get started"
                    ),),
                  ),
                )
              ],
            ),
          ],),
      ),
    );
  }
}