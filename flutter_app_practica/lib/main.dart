import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("JENNER",style: TextStyle(
            fontSize: 30.0,
            color: Colors.deepOrange,
          ),
          ),
          Text("ALEX",style: TextStyle(
            fontSize: 30.0,
            color: Colors.deepOrange,
          ),
          ),
        ],
      ),
    ),
  ),
  );

}