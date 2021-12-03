import 'package:flutter/material.dart';
class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Library Lookup"),
          backgroundColor: Color(0xFF112D4E),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          const Text("My Account"),
          _buildButtonColumn("Account Information"),
          _buildButtonColumn("Books Checked out"),
          _buildButtonColumn("Your reviews"),
          const Text("Community"),
          _buildButtonColumn("Lend Your Books"),
          const Text("Support"),
          _buildButtonColumn("Get Help"),
      ],
      ),
    );
  }
  Column _buildButtonColumn(String text) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
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