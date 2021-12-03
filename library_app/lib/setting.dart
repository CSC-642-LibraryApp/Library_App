import 'package:flutter/material.dart';
class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Library Lookup")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {  },
          child: Text("Go to Main Page"),
        ),
      ),
    );
  }
}