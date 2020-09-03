import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:p4u/values.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<ProfileScreen> {
  bool _obscureText = true;
  bool isvisible = false;
  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Profile Screen"),
        elevation: 0,
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
      ),

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


            SingleChildScrollView(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 55.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          // color: Colors.red,
                          child: Center(
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width:100.0,
                                  height: 100.0,
                                  // margin: EdgeInsets.only(left: 35),
                                  child: Image.asset(
                                    "assets/images/avatar.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Positioned(
                                  top: 70.0,
                                  child: Container(
                                    // alignment: Alignment.bottomCenter,
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Image(image: AssetImage('assets/images/edit-icon.png'),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
// SizedBox(width: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              // color: Colors.white
                              border: Border.all(color: Colors.white)
                          ),
                          height: 40.0,
                          width: MediaQuery.of(context).size.width *0.4,
                          // color: Colors.yellow,
                          child: Center(child: Text("Complete your profile",style: TextStyle(color: Colors.white),),),
                        )

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                      // border:
                      // Border.all(width: 1.0, color: Color(0xffbb00d0))
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: TextFormField(
                        // controller: _userEmail,
                        decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(fontSize: 18.0),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15)

                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                      // border:
                      // Border.all(width: 1.0, color: Color(0xffbb00d0))
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: TextFormField(
                        // controller: _userEmail,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 18.0),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15,top: 12.0),
                            suffixIcon: IconButton(
                              icon: !_obscureText
                                  ? Icon(Icons.visibility_off,
                                  color: Color(0xffbb00d0))
                                  : Icon(Icons.visibility,
                                // color: Color(0xffbb00d0)
                              ),
                              onPressed: _toggle,
                            )
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                      // border:
                      // Border.all(width: 1.0, color: Color(0xffbb00d0))
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: TextFormField(
                        // controller: _userEmail,
                        decoration: InputDecoration(
                            hintText: 'Telephone',
                            hintStyle: TextStyle(fontSize: 18.0),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15)

                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),


                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue[900]
                      ),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Center(
                        child: Text("UPDATE",style: TextStyle(color: Colors.white),),
                      )
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                      // border:
                      // Border.all(width: 1.0, color: Color(0xffbb00d0))
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: TextFormField(
                        // controller: _userEmail,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(fontSize: 18.0),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15,top: 12.0),
                            suffixIcon: IconButton(
                              icon: !_obscureText
                                  ? Icon(Icons.visibility_off,
                                  color: Color(0xffbb00d0))
                                  : Icon(Icons.visibility,
                                // color: Color(0xffbb00d0)
                              ),
                              onPressed: _toggle,
                            )
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                      // border:
                      // Border.all(width: 1.0, color: Color(0xffbb00d0))
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: TextFormField(
                        // controller: _userEmail,
                        decoration: InputDecoration(
                            hintText: 'Telephone',
                            hintStyle: TextStyle(fontSize: 18.0),
                            border: InputBorder.none,

                            contentPadding: EdgeInsets.only(left: 15,top: 12.0),
                            suffixIcon: IconButton(
                              icon: !_obscureText
                                  ? Icon(Icons.visibility_off,
                                  color: Color(0xffbb00d0))
                                  : Icon(Icons.visibility,
                                // color: Color(0xffbb00d0)
                              ),
                              onPressed: _toggle,
                            )
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),


                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue[900]
                      ),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Center(
                        child: Text("RESET PASSWORD",style: TextStyle(color: Colors.white),),
                      )
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                ],
              ),
            )
          ],),

      ),
    );
  }
}
