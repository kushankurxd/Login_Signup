import 'package:flutter/material.dart';
import 'package:login_signup/CustomPaintHome.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/signup.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TopBar_home(),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      side: BorderSide(color: Colors.black)
                    ),
                    elevation: 0,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                      child: Text(
                          'Sign in',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                    ),
                    elevation: 6,
                    color: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0,top: 60),
                  child: Text(
                      'Forgot password?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}