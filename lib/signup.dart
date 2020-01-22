
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/CustomPaintSignup.dart';

class Signup extends StatefulWidget {

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TopBar_signup(),
          Positioned(
            top: 40,
            left: 4,
            child: IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Positioned(
            top: 210,
            left: 44,
            child: Text(
              'Welcome\nBack',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 34,right: 34,top: 400,bottom: 50),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34,right: 34,bottom: 44),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 44.0),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 2,
                            color: Colors.grey[800]
                        ),
                      ),
                    ),
                    Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        radius: 40,
                        child: Icon(Icons.arrow_forward,size: 28,color: Colors.white,),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                            'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            wordSpacing: 2,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            wordSpacing: 2,
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
