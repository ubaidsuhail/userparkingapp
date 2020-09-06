/*
*  main.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:p4u/welcome_widget.dart';
import 'package:flutter/services.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeWidget(),
    );
  }
}