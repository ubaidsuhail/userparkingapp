import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:p4u/BilalsCode/drawer_screen.dart';
// import 'package:p4u/BilalsCode/pay_cash.dart';
// import 'package:p4u/BilalsCode/visa_payment_success.dart';
import 'package:p4u/cash_payment_widget.dart';
import 'package:p4u/ccpayment_processed_widget.dart';
import 'package:p4u/menu_widget.dart';
import 'package:p4u/welcome_widget_animation1.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:p4u/login_widget.dart';
import 'package:p4u/values.dart';
import 'package:p4u/welcome_widget_animation1.dart';
import 'package:circular_check_box/circular_check_box.dart';

class PayCCWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PayCCWidget> {
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
  bool checkBoxValue = false;
  String Specialization;
  List UserType = [
    {'id': 0, 'name': 'Corolla'},
    {'id': 1, 'name': 'Civic'},
    {'id': 2, 'name': 'City'},
    {'id': 3, 'name': 'Lexus'},
    {'id': 4, 'name': 'Hyundai'}
  ];
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
//                   Container(
//
// //                width: 90,
// //                height: 116,
//                     child: Image.asset(
//                       "assets/images/shutterstock-540652045-3.png",
//                       fit: BoxFit.cover,
//                     ),
//                   ),

//
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:  Radius.circular(20),topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0,bottom: 5.0),
                            child: Text(
                              "Booking",
                              textAlign: TextAlign.center,
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
                        ),




                        Center(
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "No. EP-324992429",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 25.0,),

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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 195,
                            height: 50,
                            margin: EdgeInsets.only(left: 21, top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(right: 39),
                                  child: Text(
                                    "Senayan City Mall",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      letterSpacing: 0.2,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Regular Space",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 19, 111, 209),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      height: 1.25,
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
                            width: 247,
                            height: 96,
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
                                        color: Color.fromARGB(255, 10, 36, 99),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 13),
                                  child: Text(
                                    "Jl. Asia Afrika No.Lot. 19, RT.1/RW.3, Gelora, Tanah Abang, Kota Jakarta Pusat.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 10, 36, 99),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      letterSpacing: 0.2,
                                      height: 1.57143,
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
                            margin: EdgeInsets.only(left: 21, top: 15),
                            child: Text(
                              "Open • 24 Hours",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 36, 99),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                height: 1.57143,
                              ),
                            ),
                          ),
                        ),

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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 35.0,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.0,
                                ),
                                border: Border.all(
                                    color: Colors.grey[200]
                                )),
                            padding: EdgeInsets.only(left: 0, right: 0, top: 0),
//                    color: Colors.white,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  child: DropdownButtonHideUnderline(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: DropdownButton<String>(
                                        value: Specialization,
                                        iconSize: 30,
                                        icon: (Icon(
                                            Icons.arrow_drop_down,
                                            color: AppColors.primaryText
                                        )),
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16,
                                        ),
                                        hint: Text(
                                          'Select Vehicle',
                                          textScaleFactor: 0.85,
                                          style: TextStyle(color:  Colors.grey[500]),
                                        ),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            Specialization = newValue;
                                            print(Specialization);
                                          });
                                        },
                                        items: UserType?.map((item) {
                                          return new DropdownMenuItem(
                                            child: new Text(
                                              item['name'],
                                              style: TextStyle(
                                                  color: AppColors.primaryText),
                                            ),
                                            value: item['name'].toString(),
                                          );
                                        })?.toList() ??
                                            [],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 25.0,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price",
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

                              Text(
                                "\$ 300.00",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 36, 99),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: 0.2,
                                  height: 1.25,
                                ),
                              ),
                            ],
                          ),

                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 51,
                          margin: EdgeInsets.only(left: 44, right: 36),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CashPaymentWidget()));
                                  },
                                  child: Container(
                                    width: 111,
                                    height: 50,
                                    margin: EdgeInsets.only(bottom: 1),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 19, 52, 91),
                                      borderRadius: Radii.k5pxRadius,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "CASH",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
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
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 19, 52, 91),
                                    borderRadius: Radii.k5pxRadius,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      GestureDetector(
                                        onTap:(){
                                          showAlertDialog(context,checkBoxValue);

                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 11),
                                          child: Text(
                                            "CREDIT CARD",
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        )
                      ],
                    ),
                  ),


                ],
              ),
            )],),
      ),
    );
  }
}

showAlertDialog(BuildContext context,checkBoxValue) {

  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text("Remind me later"),
    onPressed:  () {},
  );
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget launchButton = FlatButton(
    child: Text("Launch missile"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Notice"),
    content: Text("Launching this missile will destroy the entire universe. Is this what you intended to do?"),
    actions: [
      remindButton,
      cancelButton,
      launchButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Material(
          type: MaterialType.transparency,

          child: Stack(
            alignment: Alignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container( // A simplified version of dialog.
                  // alignment: Alignment.bottomCenter,

                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),


                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      Container(decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(51, 0, 0, 0),
                            offset: Offset(0, 20),
                            blurRadius: 40,
                          ),
                        ],

                        // borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width * 0.73,
                          child: Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                              onTap:(){
                                Navigator.of(context).pop()
;                              },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/oval-6-2.png",
                                        // width: 80.0,
                                        // height: 80.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Parking 4U",style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),

                              SizedBox(
                                height: 30.0,
                              ),
                              Divider(
                                thickness: 1.5,
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  child: TextField(
                                    // controller: _controller,

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                      prefixIcon: IconButton(
                                        // onPressed: () => _controller.clear(),
                                        icon: Icon(Icons.email,size: 20.0,color: AppColors.primaryText),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  child: TextField(
                                    // controller: _controller,

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Card Number",
                                      hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                      // hintStyle: TextStyle(color: Colors.grey[300]),
                                      prefixIcon: IconButton(
                                        // onPressed: () => _controller.clear(),
                                        icon: Icon(Icons.calendar_today,size: 20.0,color: AppColors.primaryText,),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Color.fromARGB(51, 0, 0, 0),
                                        //     offset: Offset(0, 20),
                                        //     blurRadius: 40,
                                        //   ),
                                        // ],
                                        border: Border.all(width: 1.0,color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.305,
                                      child: TextField(
                                        // controller: _controller,

                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "MM / YY",
                                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                          // hintStyle: TextStyle(color: Colors.grey[300]),
                                          prefixIcon: IconButton(
                                            // onPressed: () => _controller.clear(),
                                            icon: Icon(Icons.credit_card,size: 20.0,color: AppColors.primaryText),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Color.fromARGB(51, 0, 0, 0),
                                        //     offset: Offset(0, 20),
                                        //     blurRadius: 40,
                                        //   ),
                                        // ],
                                        border: Border.all(width: 1.0,color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.305,
                                      child: TextField(
                                        // controller: _controller,

                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "",
                                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 12.0),
                                          prefixIcon: IconButton(
                                            // onPressed: () => _controller.clear(),
                                            icon: Icon(Icons.lock_outline,size: 20.0,color: AppColors.primaryText),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color.fromARGB(51, 0, 0, 0),
                                    //     offset: Offset(0, 20),
                                    //     blurRadius: 40,
                                    //   ),
                                    // ],
                                    border: Border.all(width: 1.0,color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  // color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      new Checkbox(value: checkBoxValue,
                                          activeColor: Colors.green,
                                          onChanged:(bool newValue){
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });

                                          }),
                                      Text('Remember me',style: TextStyle(
                                          color: Colors.grey[300]
                                      ),)
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 30.0,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CCPaymentSuccess()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryText,
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Color.fromARGB(51, 0, 0, 0),
                                      //     offset: Offset(0, 20),
                                      //     blurRadius: 40,
                                      //   ),
                                      // ],
                                      border: Border.all(width: 1.0,color: Colors.grey[300]),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                    height: MediaQuery.of(context).size.height * 0.08,
                                    width: MediaQuery.of(context).size.width,

                                    child: Center(child: Text('PAY \$ 300.00',style: TextStyle(color: Colors.white),)),
                                  ),
                                ),
                              ),

                            ],
                          )

                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.018,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryText,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Color.fromARGB(51, 0, 0, 0),
                            //     offset: Offset(0, 20),
                            //     blurRadius: 40,
                            //   ),
                            // ],
                            border: Border.all(width: 3.0,color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
//                width: 90,
//                height: 116,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                            child: Image.asset(
                              "assets/images/logo.png",
                              width: 70.0,
                              height: 70.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],


          ));
    },
  );
}