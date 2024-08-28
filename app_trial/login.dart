import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Color.fromARGB(255, 85, 83, 227),
        body: Column(children: <Widget>[
          Container(
              child: Text("Create an Account",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              height: 150,
              width: 500,
              padding: EdgeInsets.only(top: 100, left: 10)),
          SizedBox(height: 50),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 400,
              height: 60,
              padding: EdgeInsets.only(left: 60, top: 5),
              child: Text("Email",
                  style: TextStyle(fontSize: 30, color: Colors.grey))),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 400,
              height: 60,
              padding: EdgeInsets.only(left: 60, top: 5),
              child: Text("Password",
                  style: TextStyle(fontSize: 30, color: Colors.grey))),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 400,
              height: 60,
              padding: EdgeInsets.only(left: 60, top: 5),
              child: Text("Username",
                  style: TextStyle(fontSize: 30, color: Colors.grey))),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 380,
              height: 70,
              padding: EdgeInsets.only(left: 100, top: 10),
              child: Text("Sign Up",
                  style: TextStyle(fontSize: 40, color: Colors.white))),
          Container(
            width: 400,
            height: 60,
            padding: EdgeInsets.only(left: 60, top: 20),
            child: Text("Already have an account? Sign In!",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 400,
            height: 60,
            padding: EdgeInsets.only(left: 110, top: 15),
            child: Text("Sign in with Google",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ])),
  ));
}