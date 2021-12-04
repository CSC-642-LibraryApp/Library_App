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

class wishListPage extends StatefulWidget {
  @override
  wishListPageState createState() => wishListPageState();
}

class wishListPageState extends State<wishListPage> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Wishlist books: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    decoration: new BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(20),
                    height: 115,
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Text(books[index].name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25))),
                        Padding(
                            padding: const EdgeInsets.only(top: 65, left: 15),
                            child: Text(books[index].author,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18))),
                        Padding(
                            padding: const EdgeInsets.only(top: 22, left: 210),
                            child: MaterialButton(
                                minWidth: 120,
                                height: 70,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                onPressed: () {
                                  setState(() {
                                    books.removeAt(index);
                                  });
                                },
                                child: Text("DELETE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        backgroundColor: Colors.blue,
                                        fontWeight: FontWeight.bold)))),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        )));
  }
}
