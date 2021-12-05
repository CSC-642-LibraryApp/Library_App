import 'package:flutter/material.dart';
import 'reviews.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Library Lookup"),
          backgroundColor: Color(0xFF112D4E),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          const Text(
            "My Account",
             style: TextStyle(fontWeight: FontWeight.bold,
                              color: Color(0xFF112D4E),
                              fontSize: 28),
              ),
          Column(
            children: <Widget>[
              _buildButtonColumn("Account Information"),
              _buildButtonColumn(" Books Checked out "),
              _buildButtonColumn("      Your  reviews      "),
            ],
          ),
          Container(height: 5,),
          const Text("Community",
            style: TextStyle(fontWeight: FontWeight.bold,
                color: Color(0xFF112D4E),
                fontSize: 28),
                  ),
          _buildButtonColumn("  Lend  Your  Books  "),
          const Text("Support",style: TextStyle(fontWeight: FontWeight.bold,
              color: Color(0xFF112D4E),
              fontSize: 28),
                      ),
          _buildButtonColumn("          Get  Help          "),
      ],
      ),
    );
  }
  Column _buildButtonColumn(String text, ) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black,
            primary: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 3.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                text,
              style: TextStyle(fontSize: 20),
              ),
            ),
        ),
      ],
    );
  }
}