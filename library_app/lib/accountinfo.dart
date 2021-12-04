import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:login_signup_screen/signup.dart';

class Books {
  String name;
  String author;

  Books({
    required this.name,
    required this.author,
  });
}

class accountInfoPage extends StatelessWidget {
  @override
  List<Books> books = [
    Books(name: "Book 1", author: "Author 1"),
    Books(name: "Book 2", author: "Author 2"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Image.asset(
                      'assets/profilePicture.png',
                      height: 270,
                      width: 110,
                    ),
                  ),
                  Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Text('Username: LibraryUser123',
                            style:
                                TextStyle(color: Colors.black, fontSize: 19))),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Email: user404@gmail.com',
                            style:
                                TextStyle(color: Colors.black, fontSize: 17))),
                  ]),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text('Description:',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                      ' I am a massive fan of horror themed books, nice to meet all of you!',
                      style: TextStyle(color: Colors.black, fontSize: 18))),
            ],
          ),
        ));
  }
}
