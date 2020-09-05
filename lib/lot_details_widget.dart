import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p4u/menu_widget.dart';
import 'package:p4u/menu_widget.dart';
import 'package:p4u/pay_ccwidget.dart';
import 'package:p4u/welcome_widget_animation1.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:p4u/login_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/welcome_widget_animation1.dart';
import 'package:circular_check_box/circular_check_box.dart';
class LotDetailsWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LotDetailsWidget> {
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
  bool isWinnerTakesAll = false;
  @override
  Widget build(BuildContext context) {
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
      backgroundColor:  Color.fromARGB(255, 74, 144, 226),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          // alignment: Alignment.center,
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
            //
            // Positioned(
            //   left: 0,
            //   top: 74,
            //   right: 0,
            //   bottom: -315,
            SingleChildScrollView(
              child: Column(
//
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(

//                width: 90,
//                height: 116,
                    child: Image.asset(
                      "assets/images/shutterstock-540652045-3.png",
                      fit: BoxFit.cover,
                    ),
                  ),

//
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight: Radius.circular(15)),
                      color: Colors.white,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('PARKING MALL',style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 1,
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5.0)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 8.0),
                                    child: Text('4.6',style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('Senayan City Mall',style: TextStyle(
                            color: Color.fromARGB(255, 10, 36, 99),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('JakartaPusat, Jakarta',style: TextStyle(
                            color: Color.fromARGB(255, 10, 36, 99),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0.2,
                            height: 1.28571,
                          ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(children: [
                            Image.asset(
                              "assets/images/icon---direction.png",
                              fit: BoxFit.none,
                            ),
                            SizedBox(width: 15.0,),
                            Text('200ft',style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.2,
                              height: 1.28571,
                            ),),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                            Text('300/month',style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.2,
                              height: 1.28571,
                            ),),
                          ],),
                        ),

                        SizedBox(height: 40.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(width: 1.5,color: Colors.amber),
                                color: Colors.pink[50]
                            ),
                            height: 100.0,
                            // color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.s,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('13 regular parking spaces available',style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),),

                                    Text('3 EV spaces available',style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),),

                                    Text('3 EV spaces available',style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      clipBehavior: Clip.hardEdge,
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      child: SizedBox(
                                        width: Checkbox.width,
                                        height: Checkbox.width,
                                        child: Container(
                                          decoration: new BoxDecoration(
                                            border: Border.all(
                                              width: 0.8,
                                            ),
                                            borderRadius: new BorderRadius.circular(100),
                                          ),
                                          child: Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor: Colors.transparent,
                                            ),
                                            child: Checkbox(
                                              value: isWinnerTakesAll,
                                              onChanged: (state) =>
                                                  setState(() => isWinnerTakesAll = !isWinnerTakesAll),
                                              activeColor: Colors.transparent,
                                              checkColor: AppColors.primaryText,
                                              materialTapTargetSize: MaterialTapTargetSize.padded,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      clipBehavior: Clip.hardEdge,
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      child: SizedBox(
                                        width: Checkbox.width,
                                        height: Checkbox.width,
                                        child: Container(
                                          decoration: new BoxDecoration(
                                            border: Border.all(
                                              width: 0.8,
                                            ),
                                            borderRadius: new BorderRadius.circular(100),
                                          ),
                                          child: Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor: Colors.transparent,
                                            ),
                                            child: Checkbox(
                                              value: isWinnerTakesAll,
                                              onChanged: (state) =>
                                                  setState(() => isWinnerTakesAll = !isWinnerTakesAll),
                                              activeColor: Colors.transparent,
                                              checkColor: AppColors.primaryText,
                                              materialTapTargetSize: MaterialTapTargetSize.padded,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    ClipRRect(
                                      clipBehavior: Clip.hardEdge,
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      child: SizedBox(
                                        width: Checkbox.width,
                                        height: Checkbox.width,
                                        child: Container(
                                          decoration: new BoxDecoration(
                                            border: Border.all(
                                              width: 0.8,
                                            ),
                                            borderRadius: new BorderRadius.circular(100),
                                          ),
                                          child: Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor: Colors.transparent,
                                            ),
                                            child: Checkbox(
                                              value: isWinnerTakesAll,
                                              onChanged: (state) =>
                                                  setState(() => isWinnerTakesAll = !isWinnerTakesAll),
                                              activeColor: Colors.transparent,
                                              checkColor: AppColors.primaryText,
                                              materialTapTargetSize: MaterialTapTargetSize.padded,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            "More Detail",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              height: 1.25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                          child:
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              "ADDRESS",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 1,
                              ),
                            ),
                          ),),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                          child:
                          Text(
                            "Jl. Asia Afrika No.Lot. 19, RT.1/RW.3, Gelora, Tanah Abang, Kota Jakarta Pusat.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 10, 36, 99),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                          child:
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              "OPERATION",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 1,
                              ),
                            ),
                          ),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            width: 110,
                            height: 22,
                            margin: EdgeInsets.only(top: 13),
                            child: Text(
                              "Open • 24 Hours",
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          width: 206,
                          height: 51,
                          margin: EdgeInsets.only(left: 20, bottom: 25),
                          child: Image.asset(
                            "assets/images/facilities-3.png",
                            fit: BoxFit.cover,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PayCCWidget()));
                              },
                              color: Color.fromARGB(255, 19, 52, 91),
                              shape: RoundedRectangleBorder(
                                borderRadius: Radii.k5pxRadius,
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "BOOK NOW",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  )

                ],
              ),
            )],),
      ),
    );
  }
}
