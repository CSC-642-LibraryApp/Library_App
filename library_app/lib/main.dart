import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:library_app/login.dart';
import 'package:library_app/signup.dart';
import 'package:library_app/wishlist.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: wishListPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF082242),
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,

          height: 600,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/welcome.png"))),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: '...@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  obscureText: true,
                  //style: TextStyle(color: Colors.white),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Minimum 8 Character'),
                ),
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: 250,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                      //Navigator.push(context,
                      //MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    // defining the shape
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  // creating the signup button
                  SizedBox(height: 10),
                  MaterialButton(
                    minWidth: 250,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
