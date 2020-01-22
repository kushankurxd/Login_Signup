import 'package:flutter/material.dart';
import 'package:login_signup/CustomPaintLogin.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginState();

}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TopBar_login(),
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
            top: 180,
            left: 44,
            child: Text(
              'Create\nAccount',
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
                  padding: const EdgeInsets.only(left: 34,right: 34,top: 320,bottom: 40),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34,right: 34,bottom: 40),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8),
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
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8),
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
                        'Sign up',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 2,
                            color: Colors.white
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}