import 'package:authentication_screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Colors.green[700],
      resizeToAvoidBottomPadding: false,
      body: Column(
        //Entire page will be in one column
        // Align "Hello there" to the left side of the screen
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Container(
            // stack that will have the words "Hello there"
            child: Center(
              child: Stack(
                children: <Widget>[
                  // For each container padding will inform their position
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 110.0, 0.0, 0.0),
                    child: Text(
                      'Plant Me',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(120.0, 215.0, 0.0, 0.0),
                    child: SizedBox(
                      height: 10.0,
                      width: 150.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.green[900]),
                      ),
                    ),
                  ),

                  // Container(
                  //   padding: EdgeInsets.fromLTRB(15.0, 185.0, 0.0, 0.0),
                  //   child: Text(
                  //     'There',
                  //     style: TextStyle(
                  //         fontSize: 80.0,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.green[900]),
                  //   ),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(250.0, 185.0, 0.0, 0.0),
                  //   child: Text(
                  //     '.',
                  //     style: TextStyle(
                  //         fontSize: 80.0,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.greenAccent),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),

          // Starting of the sign in form
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                // first text field "Email"
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
                // create space between the textfields
                SizedBox(
                  height: 20.0,
                ),
                // second text field "Password"
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: Text('Create an account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green[600],
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                    Container(
                      // alignment: Alignment(-1.0, -1.0),
                      // padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      child: InkWell(
                        child: Text('Forgot Password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green[600],
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.grey[700],
                    color: Colors.green[900],
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.facebook,
                          size: 25,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Login with facebook',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
